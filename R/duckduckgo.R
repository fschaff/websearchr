#' Search Duckduckgo
#' @description Improve your workflow by searching with duckduckgo.com directly from the console without having to switching to the browser and
#' opening a new tab first.
#' @param search_terms Search terms encapsulated in " ".
#' @keywords duckduckgo internet workflow
#' @examples
#' duckduckgo("my search terms")
#' ddg("r-project")
#' @export

duckduckgo <- function(search_terms) {
  if (missing(search_terms)) {
    message("Opening Duckduckgo in browser")
    browseURL(paste0("https://duckduckgo.com"))
  }
  else {
    message("Opening Duckduckgo search for \"", search_terms, "\" in browser")
    browseURL(paste0("https://duckduckgo.com/?q=", URLencode(search_terms)))
  }
}

#' @export
#' @rdname duckduckgo
ddg <- duckduckgo
