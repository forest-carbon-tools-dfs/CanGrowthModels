library(httr)
library(jsonlite)

api_key <- readLines("api_key.txt")

if (api_key == "") {
  stop("LLAMAINDEX_API_KEY is not set.")
}

# Folder containing your PDFs
pdf_folder <- "C:/CanGrowthModels/GYmodelPDFmanuals/"

# List all PDF files
pdf_files <- list.files(pdf_folder, pattern = "\\.pdf$", full.names = TRUE)

# Function to convert a single PDF
convert_pdf_to_md <- function(file_path, wait_seconds = 60) {
  message("Uploading: ", basename(file_path))
  
  upload_url <- "https://api.cloud.llamaindex.ai/api/parsing/upload"
  
  response <- POST(
    upload_url,
    add_headers(Authorization = paste("Bearer", api_key)),
    body = list(file = upload_file(file_path))
  )
  
  job_id <- content(response)$id
  message("Job ID: ", job_id)
  
  message("Waiting ", wait_seconds, " seconds for parsing...")
  Sys.sleep(wait_seconds)
  
  result_url <- paste0(
    "https://api.cloud.llamaindex.ai/api/parsing/job/",
    job_id,
    "/result/markdown"
  )
  
  md_response <- GET(
    result_url,
    add_headers(Authorization = paste("Bearer", api_key))
  )
  
  parsed <- content(md_response)
  
  # Output filename
  out_file <- file.path(
    pdf_folder,
    paste0(tools::file_path_sans_ext(basename(file_path)), ".md")
  )
  
  if (!is.null(parsed$markdown)) {
    writeLines(parsed$markdown, out_file)
    message("✔ Saved: ", out_file)
  } else {
    message("⚠ No markdown returned for ", basename(file_path))
    print(parsed)
  }
}

# Apply to all PDFs
lapply(pdf_files, convert_pdf_to_md)
