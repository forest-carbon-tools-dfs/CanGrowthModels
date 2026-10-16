# ============================================================
# Canadian Forest Growth & Yield Model Registry
# Copy model summaries, coverage claims, and links into separate
# website-ready CSV files. Reject references to missing model IDs,
# but do not reconcile claims across the three datasets.
# ============================================================

library(readr)
library(dplyr)

# ------------------------------------------------------------
# 1. Read source data
# ------------------------------------------------------------

models <- read_csv(
  "data/models.csv",
  show_col_types = FALSE
)
coverage <- read_csv(
  "data/model_coverage.csv",
  show_col_types = FALSE
)
links <- read_csv(
  "data/model_links.csv",
  show_col_types = FALSE
)

# ------------------------------------------------------------
# 2. Check references before preparing the website data
# ------------------------------------------------------------

unknown_coverage_models <- setdiff(unique(coverage$model_id), unique(models$model_id))
unknown_link_models <- setdiff(unique(links$model_id), unique(models$model_id))

if (length(unknown_coverage_models) > 0 || length(unknown_link_models) > 0) {
  stop(
    "Coverage or links reference unknown model_id values: ",
    paste(unique(c(unknown_coverage_models, unknown_link_models)), collapse = ", ")
  )
}

# ------------------------------------------------------------
# 3. Create output directory
# ------------------------------------------------------------

dir.create(
  "derived",
  showWarnings = FALSE
)

# ------------------------------------------------------------
# 4. Keep model summaries, coverage claims, and links separate
# ------------------------------------------------------------

write_csv(
  models,
  "derived/models_web.csv"
)
write_csv(coverage, "derived/model_coverage_web.csv")
write_csv(links, "derived/model_links_web.csv")

cat("Website data created.\n")