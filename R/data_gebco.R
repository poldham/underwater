#' gebco
#'
#' A dataset of Undersea Feature Names from the \href{https://www.gebco.net/data_and_products/undersea_feature_names/}{General Bathymetric Chart of the Oceans (GEBCO)}. The reference dataset in data-raw/ gebco.rda was downloaded on the 2017-12-29.
#' @docType data
#' @references Please cite as "IHO-IOC GEBCO Gazetteer of Undersea Feature Names, www.gebco.net".
#' @source (\href{https://www.gebco.net/data_and_products/undersea_feature_names/}{GEBCO})
#' @format A data.frame with 11 variables: \code{specific_term}, \code{generic_term}, \code{associated_meeting}, \code{proposer}, \code{year_of_proposal}, \code{discoverer}, \code{year_of_discovery}, \code{origin_of_name}, \code{additional_information}, \code{coordinates}, \code{secondary_coordinates}
#' @keywords datasets
"gebco"