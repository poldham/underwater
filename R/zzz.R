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