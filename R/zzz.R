#' Clean names
#'
#' @param x the object with names to be cleaned
#'
#' @return A data frame with names in lowercase, spaces as underscores and brackets and forward slashes removed
#' @export
#' @examples \dontrun{df <- clean_name(df)}
clean_names <- function(x){
  names(x) <- names(x) %>%
  tolower() %>%
  stringr::str_replace_all(., " ", "_") %>%
  stringr::str_replace_all(., "[(]", "") %>%
    stringr::str_replace_all(., "[)]", "") %>%
    stringr::str_replace_all(., "/", "") %>%
    stringr::str_replace_all(., "-", "")
x
}

##' @title import gebco from raw
#' @description  Imports the raw gebco csv file in data-raw, regularizes column names (removes brackets and forward slash, replace space with underscore).
#' @return data.frame
#' @details The raw csv file is manually downloaded to data-raw from \url{https://www.ngdc.noaa.gov/gazetteer/} and is Gazeteer version 2.0+13. Download date 2017-12-29.
#' @importFrom readr read_csv
#' @importFrom readr cols
#' @importFrom readr col_character
#' @importFrom readr col_integer
#' @importFrom dplyr mutate
#' @export
#' @references Please cite as "IHO-IOC GEBCO Gazetteer of Undersea Feature Names, www.gebco.net"
#' @examples \dontrun{
#' gebco <- import_gebco()
#' path <- import_gebco(path = "pathtodfile")
#' }
import_gebco <- function(){
  gebco <- readr::read_csv("data-raw/gebco_raw.txt", col_types = cols(
    `Specific Term` = col_character(),
    `Generic Term` = col_character(),
    `Associated Meeting` = col_character(),
    Proposer = col_character(),
    `Year of Proposal` = col_integer(),
    Discoverer = col_character(),
    `Year of Discovery` = col_integer(),
    `Origin of Name` = col_character(),
    `Additional Information` = col_character(),
    Coordinates = col_character(),
    `Secondary Coordinates` = col_character()
  )) %>%
    clean_names()
  # coordinates and secondary coordinates are points, linestring and polygons. Add col to identify for filter and trimws
  gebco <- tidyr::separate(gebco, coordinates, into = "coordinate_type", sep = " [(]", remove = FALSE, extra = "drop") %>%
    dplyr::mutate(coordinate_type = trimws(.$coordinate_type, which = "both")) %>%
    tidyr::separate(., secondary_coordinates, into = "secondary_coordinate_type", sep = " [(]", remove = FALSE, extra = "drop") %>%
    dplyr::mutate(., secondary_coordinate_type = trimws(.$secondary_coordinate_type, which = "both"))

  save(gebco, file = "data/gebco.rda", compress = "xz")
  save(gebco, file = "inst/testdata/gebco.rda", compress = "xz")
  load("data/gebco.rda", envir = globalenv())
}

#' Geonames feature codes
#'
#' @return data frame
#' @format{
#' A data.frame with 11 variables and 4084 rows
#' \describe{
#'     \item{\code{feature_class}}{a character vector containing the Geonames feature class}
#'     \item{\code{feature_code}}{a character vector containing the Geonames feature code}
#'     \item{\code{feature_type}}{a character vector containing the Geonames feature type}
#'     \item{\code{feature_description}}{a character vector containing the Geonames feature description}
#' }
  #'}
#' @references Geonames feature code file \url{http://download.geonames.org/export/dump/featureCodes_en.txt} and table \url{http://www.geonames.org/export/codes.html}
#' @details The main allCountries table that is the source for the undersea table lists features in terms of feature class and feature code. The featurecodes table concatenates these fields with a stop. This function separates them for joining.
#' @export
#'
#' @examples \dontrun{get_featurecodes()}
get_featurecodes <- function(){
  # the problem is that testthat cant find the goddam directories where the data is saved to. Bloody hell.
  download.file("http://download.geonames.org/export/dump/featureCodes_en.txt", destfile = "data-raw/featurecodes.txt")
  featurecodes <- readr::read_tsv("data-raw/featurecodes.txt", col_names = c("feature_code", "feature_name", "feature_description")) %>%
    tidyr::separate(., feature_code, c("feature_class", "feature_code"), sep = "[.]") %>%
    tidyr::drop_na(., feature_code) # drop last row not available
  save(featurecodes, file = "data/featurecodes.rda", compress = "xz")
  save(featurecodes, file = "inst/testdata/featurecodes.rda", compress = "xz")
}