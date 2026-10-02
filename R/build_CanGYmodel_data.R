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

models_web <- models |>
  mutate(
    management_scenarios =
      paste(
        c(
          ifelse(commercial_thinning == "yes",
                 "Commercial thinning", NA),
          ifelse(precommercial_thinning == "yes",
                 "Precommercial thinning", NA),
          ifelse(fertilization == "yes",
                 "Fertilization", NA),
          ifelse(pruning == "yes",
                 "Pruning", NA)
        ),
        collapse = "; "
      )
  )

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