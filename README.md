# Canadian Forest Growth & Yield Model Registry

[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![License: GPL-3.0-only](https://img.shields.io/badge/license-GPL--3.0--only-blue.svg)](LICENSE)
[![Version: 0.1.0](https://img.shields.io/badge/version-0.1.0-blue.svg)](#citation)

A curated registry of forest growth and yield models developed for or applicable to Canadian forests. It is a **pointer, not an authoritative source**: each entry gives a brief, general summary and links to the model's own website and repositories, where users can find current details. Models change over time and the registry is updated only periodically, so entries are kept general to reduce the chance of stating outdated or inaccurate facts. The project is private-first; any public release requires an explicit decision by the maintainers.

Developed by Derek Sattler as work undertaken at Natural Resources Canada (NRCan).
Contact: [derek.sattler@nrcan-rncan.gc.ca](mailto:derek.sattler@nrcan-rncan.gc.ca).

## Project Rules

- Keep entries brief and general; point to the model's website, repository, manuals, and publications through `data/model_links.csv` rather than reproducing detail from them. Record facts only from public or otherwise approved sources.
- Do not guess species, geographic applicability, or other facts. Leave optional values blank, and use `unknown` only where the schema allows it (for example `management_context`).
- Do not commit credentials, access tokens, private source material, or local processing artifacts. Use environment variables for any future integrations that require credentials.
- Source manuals and publications used while gathering information (PDFs and Markdown conversions) are kept **outside this repository** in a local folder (`C:/CanGrowthModels_sources/`). Do not copy them into this repository; AI use is limited to Markdown excerpts you explicitly choose.
- Keep exactly one row per model in `data/models.csv`, identified by a unique,
  stable `model_id`.
- `developers` are the original developers of a model, `organization` is the
  organization that supported or directed its development, and `contributors`
  are individuals or organizations that added to its later development. Leave
  undocumented values blank rather than inferring them from publication authors
  or publishers.
- `model_coverage.jurisdiction_code` holds Canadian provinces
  and territories only. Use `region_detail` in `model_coverage.csv` for
  sub-regions, specific areas, ecosystems, or US states a model also covers.
- Version families may share one model card; keep version-specific capabilities
  and links explicitly labelled rather than applying one version's claims to all.
- Record the date of each maintainer review in `last_reviewed`.
- Keep source data and source code under version control. Treat Quarto output (`_site/`, `.quarto/`) as a generated artifact.
- Review changes to registry records for accuracy and licensing before accepting them.

## Project Layout

- `data/*_schema_definition.csv`: field definitions, required flags, and allowed
  values for each table. These are the single source of truth read by the validator.
- `data/models.csv`, `data/model_coverage.csv`, `data/model_links.csv`: brief
  model summaries, the provinces/territories (with optional region) each model is
  tied to for the map, and typed links to each model's website, repository, and
  documentation. Multiple link rows per model avoid embedding several URLs in
  one CSV cell.
- [Registry guide](docs/pipeline-and-workflow.md): table relationships, column
  definitions, the validation and render pipeline, the maintainer workflow for
  editing the CSVs, and how collaborators and the public propose additions and
  changes. [Contributing](CONTRIBUTING.md) is the short version;
  [Project plan](docs/PROJECT_PLAN.md) also lives in `docs/`.
- `.github/ISSUE_TEMPLATE/`: issue forms for proposing a new model, a change to
  an existing model, or a new field. `.github/PULL_REQUEST_TEMPLATE.md` is the
  checklist for collaborator pull requests.
- `R/`: functions only (`registry.R` schema-driven validation, `site_helpers.R`
  shared by the Quarto pages). `scripts/`: thin entry points run from the project
  root, because paths are project-root-relative.
- `tests/testthat/`: automated data-contract and validator tests
  (`Rscript tests/testthat.R`). `.github/workflows/`: CI runs the tests and
  renders the site. `DESCRIPTION` lists the R package dependencies (this is not
  an installable package).
- `_quarto.yml`, `index.qmd`, `models.qmd`, `map.qmd`: the static Quarto
  catalogue and jurisdiction-level coverage map. The pages read `data/` directly;
  map logic is an R code chunk in `map.qmd`.
- `data/geospatial/canada/`: the Canada boundary shapefile and its Simplemaps
  CC BY 4.0 license notice.

`CanGrowthModelsWikiPage.csv` is a retired, git-ignored seed file, not a pipeline
input. Some early entries were seeded from a Wikipedia page; the per-row citation
fields that recorded this have been removed, so review Wikipedia's reuse (CC BY-SA)
requirements before any public release.

## Local Checks

For routine CSV edits, adding models, renaming columns, and contributing, see the
[registry guide](docs/pipeline-and-workflow.md).

With R (including `readr`, `htmltools`, `rlang`, `sf`, `leaflet`, and `testthat`)
and Quarto installed, run from the project root with `Rscript` and `quarto` on
your PATH:

```powershell
Rscript scripts/validate_registry.R
Rscript tests/testthat.R
quarto render
```

To change the map, edit the R code chunk in `map.qmd`. In RStudio, open
`CanGrowthModels.Rproj` and use the page's **Render** button, or run
`quarto render map.qmd` in the RStudio Terminal for a focused map render.
Both run the project pre-render step, which validates the source data first.
Run `quarto render` to render the full site.

Quarto automatically runs the registry validator before
rendering. The catalogue filters in the browser without a server. The map
colors a province or territory when at least one model is recorded for it and
opens the list of models on click; the fill is not an exact model footprint. A
province match may represent only a region, ecosystem, or adjoining US state, as
noted in the popup and on the model card. The programming language is recorded
where known; open-source status and licensing are not, so see each model's
website and repository. Some species
lists are partial, so a missing search match does not establish that a model
excludes a species. There is no public deployment.
The validator checks every column against its schema definition (required values,
types, controlled vocabularies, keys, and cross-table references) but cannot
confirm that an entry is accurate or current.

## Copyright and License

Copyright (C) 2026 His Majesty the King in Right of Canada, as represented by
the Minister of Natural Resources.

The project-authored software is licensed under the GNU General Public License,
version 3 only (`GPL-3.0-only`). See [LICENSE](LICENSE) for the full terms.
The software is provided without warranty, as described in the license.
Referenced models, third-party software, and source materials retain their own
copyrights and licensing terms; this license does not grant rights to them.

## Citation

Sattler, D (2026). CanGrowthModels: A registry to explore forest growth and yield
models in Canada. Registry software (version 0.1.0).
<https://github.com/forest-carbon-tools-dfs/CanGrowthModels>.