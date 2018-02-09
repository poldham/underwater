#' @title Geonames Undersea Place Names
#'@description  A data frame with 14,513 Geonames places with feature class U "undersea" extracted from \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries.txt} on 2018-01-01. For all feature codes see \href{http://www.geonames.org/export/codes.html}{GeoNames Feature Codes}.
#' @docType data
#' @references Suggested Citation Geonames Feature Class U \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries file}
#' @source Extracted from \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries file}
#' @details Column names converted to lower case, punctuation and spaces replaced with underscores.
#' @format A data.frame with 20 variables \code{geonameid}, \code{name}, \code{asciiname}, \code{alternatenames}, \code{latitude}, \code{longitude}, \code{feature_class}, \code{feature_code}, \code{iso}, \code{cc2}, \code{admin1_code}, \code{admin2_code}, \code{admin3_code}, \code{admin4_code}, \code{population}, \code{elevation}, \code{dem}, \code{timezone}, \code{modification_date}, \code{download_date}
"undersea"