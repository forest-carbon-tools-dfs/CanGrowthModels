# ============================================================
# Canadian Forest Growth & Yield Model Registry
# build_data.R
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

# ------------------------------------------------------------
# 2. Create derived summary fields
# ------------------------------------------------------------

# Per-source rows are passed through; consolidation by model_id comes later.
models_web <- models

# ------------------------------------------------------------
# 3. Create output directory
# ------------------------------------------------------------

dir.create(
  "derived",
  showWarnings = FALSE
)

# ------------------------------------------------------------
# 4. Write website-ready data
# ------------------------------------------------------------

write_csv(
  models_web,
  "derived/models_web.csv"
)

cat("Website data created.\n")