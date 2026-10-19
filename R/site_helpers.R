# Helpers shared by the Quarto pages (models.qmd, map.qmd).

#' Display a value, or a fallback when it is missing or blank
#' @noRd
shown <- function(value, fallback = "Not recorded") {
  if (length(value) == 0 || is.na(value) || !nzchar(trimws(value))) {
    fallback
  } else {
    as.character(value)
  }
}

#' One labelled list item
#' @noRd
field <- function(label, value) {
  htmltools::tags$li(htmltools::tags$strong(paste0(label, ": ")), shown(value))
}
