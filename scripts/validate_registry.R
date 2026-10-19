# Entry point: validate all registry tables. Run from the project root:
#   Rscript scripts/validate_registry.R
# Also run automatically by `quarto render` (see _quarto.yml).

source("R/registry.R")
validate_registry()
