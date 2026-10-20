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

#' Is a URL hosted on github.com or a *.github.io site?
#' @noRd
is_github_link <- function(url) {
  host <- sub("^https?://([^/]+).*$", "\\1", url, ignore.case = TRUE)
  grepl("(^|\\.)github\\.com$", host, ignore.case = TRUE) ||
    grepl("\\.github\\.io$", host, ignore.case = TRUE)
}

#' Small badge marking a link as GitHub-hosted
#' @noRd
github_badge <- function() {
  htmltools::tags$span(class = "badge bg-dark ms-1", "GitHub")
}

#' Ordered link-type groups shown as sub-sections on a model card
#' @noRd
link_group_spec <- list(
  list(label = "Model website", types = c("official_website")),
  list(label = "Get the model", types = c("model_download", "source_code")),
  list(label = "Tools to help run it", types = c("run_tool")),
  list(label = "Documentation and publications", types = c("manual", "publication")),
  list(label = "Other links", types = c("other"))
)

#' Split a model's link rows into the ordered, non-empty groups above
#' @return A list of `list(label, rows)`, one per non-empty group.
#' @noRd
group_model_links <- function(resources) {
  groups <- lapply(link_group_spec, function(group) {
    list(label = group$label, rows = resources[resources$link_type %in% group$types, , drop = FALSE])
  })
  Filter(function(group) nrow(group$rows) > 0L, groups)
}
