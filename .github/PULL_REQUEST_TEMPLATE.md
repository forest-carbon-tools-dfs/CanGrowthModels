## What does this change?

- [ ] New model (rows in `models.csv`, `model_coverage.csv`, `model_links.csv`)
- [ ] Change to an existing value
- [ ] New or changed field (schema change)
- [ ] Other (code, docs)

## Public source supporting the change

<!-- URL(s) to the model's website, repository, manual, or publication. -->

## Checklist

- [ ] `Rscript scripts/validate_registry.R` passes
- [ ] `Rscript tests/testthat.R` passes
- [ ] Entries are brief and general; nothing guessed (`unknown` or blank where allowed)
- [ ] Jurisdictions are Canadian province/territory codes; regions, ecosystems, and US states are in `region_detail`
- [ ] Every new model has at least one link
- [ ] For a new field: schema definition, sample data in `tests/testthat/test-registry.R`, and `docs/pipeline-and-workflow.md` are updated
