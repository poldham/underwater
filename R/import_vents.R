#' @title Import the latest Interridge Vents Field data
#' @description Import the latest version of the csv file from the InterRidge Vents Database \url{https://vents-data.interridge.org/ventfields_list_all}, presently in Version 3.4. The function imports the latest version into data-raw. Column names are regularised by replacing spaces with underscores,removing brackets and a download_date column is added. The file is saved to data as \file{vents.rda} and loaded into the global environment as \file{vents}.
#' @return data.frame
#' @importFrom utils download.file
#' @importFrom readr read_csv
#' @importFrom readr cols
#' @importFrom readr col_character
#' @importFrom readr col_integer
#' @importFrom readr col_double
#' @export
#' @details For license details see \file{interridge_citation.txt} in data-raw.
#' @references Please cite the data as: "Beaulieu, S.E., 2015, InterRidge Global Database of Active Submarine Hydrothermal Vent Fields: prepared for InterRidge, Version 3.3. World Wide Web electronic publication. Version 3.X accessed 2017-09-04, http://vents-data.interridge.org"
#' @examples \dontrun{vents <- import_vents()}
import_vents <- function() {
  x <- download.file("https://vents-data.interridge.org/ventfields_list_all_CSV", destfile = "data-raw/vents_raw.csv")
  vents <- readr::read_csv("data-raw/vents_raw.csv", col_types = cols(
    .default = col_character(),
    `Maximum Temperature` = col_integer(),
    Latitude = col_double(),
    Longitude = col_double(),
    `Maximum or Single Reported Depth` = col_integer(),
    `Minimum Depth` = col_integer(),
    `Full Spreading Rate (mm/a)` = col_double(),
    `Volcano Number` = col_integer(),
    `Node ID` = col_integer()
  ))
  # clean_names, see zzz (replace with janitor?)
  vents <- clean_names(vents)
  vents$download_date <- Sys.Date()
  save(vents, file = "data/vents.rda")
  save(vents, file = "inst/testdata/vents.rda")
  load("data/vents.rda", envir = globalenv(), verbose = FALSE)
}