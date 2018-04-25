#' @title gebco
#' @description A dataset of Undersea Feature Names from the (\href{https://www.gebco.net/data_and_products/undersea_feature_names/}{General Bathymetric Chart of the Oceans (GEBCO)}). The reference dataset was downloaded on the 2017-12-29.
#' @docType data
#' @references Please cite as "IHO-IOC GEBCO Gazetteer of Undersea Feature Names, www.gebco.net".
#' @source (\href{https://www.ngdc.noaa.gov/gazetteer/}{https://www.ngdc.noaa.gov/gazetteer/})
#' @format{
#' A data.frame with 11 variables and 4084 rows
#' \describe{
#'     \item{\code{specific_term}}{a character vector}
#'     \item{\code{generic_term}}{a character vector}
#'     \item{\code{associated_meeting}}{a character vector}
#'     \item{\code{proposer}}{a character vector}
#'     \item{\code{year_of_proposal}}{integer}
#'     \item{\code{discoverer}}{a character vector}
#'     \item{\code{year_of_discovery}}{integer}
#'     \item{\code{origin_of_name}}{a character vector}
#'     \item{\code{additional_information}}{a character vector}
#'     \item{\code{coordinates}}{a character vector}
#'     \item{\code{secondary_coordinates}}{a character vector}
#' }
#'}
#' @examples gebco
#' @keywords datasets
"gebco"