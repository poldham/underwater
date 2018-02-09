#' @title import gebco from raw
#' @description  Imports the raw gebco csv file in data-raw, regularize column names (removes brackets and forward slash, replace space with underscore).
#' @param path path to a local file (optional)
#' @return data.frame
#' @details The raw csv file is manually downloaded to data-raw from \url{https://www.ngdc.noaa.gov/gazetteer/} and is Gazeteer version 2.0+13. Download date 2017-12-29.
#' @importFrom readr read_csv
#' @importFrom readr cols
#' @importFrom readr col_character
#' @importFrom readr col_integer
#' @export
#' @references Please cite as "IHO-IOC GEBCO Gazetteer of Undersea Feature Names, www.gebco.net"
#' @examples \dontrun{
#' gebco <- import_gebco()
#' path <- import_gebco(path = "pathtodfile")
#' }
import_gebco <- function(path = NULL){
  if (!is.na(path)){
    gebco <- read_csv(path, col_types = cols(
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

  } else {
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
  }
  save(gebco, file = "data/gebco.rda")
  save(gebco, file = "tests/testthat/gebco.rda")
  load("data/gebco.rda", envir = globalenv())
}