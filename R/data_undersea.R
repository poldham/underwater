#' @title Geonames Undersea Place Names
#' @description A data frame with 14,513 Geonames places with feature class U "undersea" extracted from \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries.txt} on 2018-01-01. For all feature codes see \href{http://www.geonames.org/export/codes.html}{GeoNames Feature Codes}.
#' @docType data
#' @references Suggested Citation Geonames Feature Class U \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries file}
#' @source Extracted from \href{http://download.geonames.org/export/dump/allCountries.zip}{Geonames allCountries file}
#' @details For information on feature codes see \url{http://download.geonames.org/export/dump/featureCodes_en.txt}
#' @format{
#' A data.frame with 20 variables
#' \describe{
#'   \item{\code{geonameid}}{character}
#'   \item{\code{name}}{character}
#'   \item{\code{asciiname}}{character}
#'   \item{\code{alternatenames}}{character}
#'   \item{\code{latitude}}{numeric}
#'   \item{\code{longitude}}{numeric}
#'   \item{\code{feature_class}}{character}
#'   \item{\code{feature_code}}{character}
#'   \item{\code{iso}}{character vector of iso country codes}
#'   \item{\code{cc2}}{character}
#'   \item{\code{admin1_code}}{character}
#'   \item{\code{admin2_code}}{character}
#'   \item{\code{admin3_code}}{character}
#'   \item{\code{admin4_code}}{character}
#'   \item{\code{population}}{character}
#'   \item{\code{elevation}}{character}
#'   \item{\code{dem}}{character}
#'   \item{\code{timezone}}{character}
#'   \item{\code{modification_date}}{date}
#'   \item{\code{download_date}}{date}
#' }
#'}
"undersea"