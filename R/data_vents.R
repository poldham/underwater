#' @title vents
#' @description A dataset on global hydrothermal vents from the \href{https://vents-data.interridge.org/}{InterRidge Vents Database Version 3.4} downloaded from \url{https://vents-data.interridge.org/ventfields_list_all}
#' @details For license details see \file{interridge_citation.txt} in data-raw or \url{https://creativecommons.org/licenses/by-nc-sa/3.0/}.
#' @references Please cite the data as: "Beaulieu, S.E., 2015, InterRidge Global Database of Active Submarine Hydrothermal Vent Fields: prepared for InterRidge, Version 3.3. World Wide Web electronic publication. Version 3.X accessed, insert latest date as YYYY-MM-DD, http://vents-data.interridge.org"
#' @format{ A data.frame with 26 variables:
#'  \describe{
#'  \item{\code{name_id}}{character vector}
#'  \item{\code{name_aliases}}{character vector}
#'  \item{\code{mgds_featureid_lowest_in_hierarchy}}{character vector}
#'  \item{\code{vent_sites}}{character vector}
#'  \item{\code{activity}}{character vector}
#'  \item{\code{maximum_temperature}}{integer vector}
#'  \item{\code{max_temperature_category}}{character vector}
#'  \item{\code{latitude}}{double}
#'  \item{\code{longitude}}{double}
#'  \item{\code{ocean}}{character vector}
#'  \item{\code{region}}{character vector}
#'  \item{\code{national_jurisdiction}}{character vector}
#'  \item{\code{maximum_or_single_reported_depth}}{integer}
#'  \item{\code{minimum_depth}}{integer}
#'  \item{\code{tectonic_setting}}{character vector}
#'  \item{\code{full_spreading_rate_mma}}{double}
#'  \item{\code{host_rock}}{character vector}
#'  \item{\code{deposit_type}}{character vector}
#'  \item{\code{notes_on_vent_field_description}}{character vector}
#'  \item{\code{notes_relevant_to_biology}}{character vector}
#'  \item{\code{year_and_how_discovered_if_active,_visual_confirmation_is_listed_first}}{character vector}
#'  \item{\code{discovery_references_text}}{character vector}
#'  \item{\code{other_references_text}}{character vector}
#'  \item{\code{volcano_number}}{integer}
#'  \item{\code{node_id}}{integer}
#'  \item{\code{download_date}}{date}
#'  }
#'}
"vents"