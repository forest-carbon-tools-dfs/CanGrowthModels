# Local adaptation of pdf_to_markdown_bulk.R; no API key or upload is needed.
convert_magplot_dictionary <- function(
    pdf_file = "C:\\GroundPlotVRIVDYPyieldcurves\\data\\MAGPlot_DB_Data_Dictionary_En.pdf",
    output_file = file.path(
      dirname(pdf_file),
      paste0(tools::file_path_sans_ext(basename(pdf_file)), ".md")
    ),
    overwrite = FALSE,
    title = "MAGPLOT database data dictionary") {
  # Validate paths before extracting or replacing an existing document.
  if (!requireNamespace("pdftools", quietly = TRUE)) {
    stop("Install the local extraction dependency with install.packages('pdftools')")
  }
  if (!file.exists(pdf_file)) {
    stop("PDF not found: ", pdf_file)
  }
  if (!dir.exists(dirname(output_file))) {
    stop("Output directory not found: ", dirname(output_file))
  }
  if (file.exists(output_file) && !overwrite) {
    stop("Markdown already exists; use overwrite = TRUE to replace it: ", output_file)
  }
  if (tolower(normalizePath(pdf_file, winslash = "\\")) ==
      tolower(normalizePath(output_file, winslash = "\\", mustWork = FALSE))) {
    stop("The output path must differ from the PDF path")
  }

  # Keep each page's layout in a code block so table columns stay aligned.
  pages <- pdftools::pdf_text(pdf_file)
  if (length(pages) == 0L || all(!nzchar(trimws(pages)))) {
    stop("The PDF has no extractable text; OCR is required before conversion")
  }
  blank_pages <- which(!nzchar(trimws(pages)))
  if (length(blank_pages) > 0L) {
    warning("Pages with no extractable text may require OCR: ",
            paste(blank_pages, collapse = ", "))
  }
  output <- c(
    paste0("# ", title),
    "",
    paste0("Source: `", basename(pdf_file), "`"),
    "",
    "Locally extracted PDF text; page numbering follows the PDF page order.",
    "Tables are preserved as fixed-width text, not reconstructed Markdown tables.",
    "Check table alignment, symbols and reading order against the source PDF.",
    ""
  )
  for (page in seq_along(pages)) {
    lines <- strsplit(pages[[page]], "\n", fixed = TRUE)[[1L]]
    lines <- sub("\r$", "", lines)
    lines <- sub("[ \t]+$", "", lines)
    fence <- "```"
    while (any(grepl(fence, lines, fixed = TRUE))) {
      fence <- paste0(fence, "`")
    }
    output <- c(output, paste0("## PDF page ", page), "",
                paste0(fence, "text"), lines, fence, "")
  }
  writeLines(enc2utf8(output), output_file, useBytes = TRUE)
  if (is.na(file.size(output_file)) || file.size(output_file) == 0) {
    stop("Markdown output was not written successfully: ", output_file)
  }
  message("Saved ", length(pages), " pages to: ", output_file)
  invisible(output_file)
}

# Run with Rscript, or source this file and call the function explicitly.
if (sys.nframe() == 0L) {
  convert_magplot_dictionary()
}
