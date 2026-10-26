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
- `data/geospatial/ecozones/`: the simplified ecozone boundaries
  (`ecozones.gpkg`, excluding the largely unforested Arctic Cordillera,
  Northern Arctic and Southern Arctic ecozones) and province/territory-ecozone overlap lookup
  (`province_ecozones.csv`) behind the map's ecozone view, the unmodified
  source GeoPackage clipped to the Canada land boundary (`source/`), and the
  Open Government Licence – Canada
  notice (`license_gis.txt`). Derived by `scripts/prepare_ecozones.R`, which
  is a one-time, re-runnable script, not part of the render pipeline.

`CanGrowthModelsWikiPage.csv` is a retired, git-ignored seed file, not a pipeline
input. Some early entries were seeded from a Wikipedia page; the per-row citation
fields that recorded this have been removed, so review Wikipedia's reuse (CC BY-SA)
requirements before any public release.

## How to add a model

Every contribution is a proposal until a maintainer checks it against the
model's own public pages. Use **public information only**, give a public URL as
evidence, and leave a field blank (or `unknown` where the schema allows it)
rather than guess. Field definitions and allowed values are in
`data/*_schema_definition.csv`.

**All available forms** (new model, change to an existing model, new field):
[choose a template](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new/choose).

**If you do not have write access to this repository** (the usual case):

1. Open the [**Propose a new model** form](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=new-model.yml)
   (or go to **Issues → New issue** and choose *Propose a new model*).
2. Give the model name, its links (one per line as `type | title | URL`, where
   `type` is `official_website`, `model_download`, `run_tool`, `source_code`,
   `model_manual`, `publication` or `other`), the Canadian provinces/territories
   where it applies, and anything else you know (model type, availability,
   output types, brief summary).
3. Add the public URL(s) that support what you wrote and tick the confirmation
   box. A maintainer will transcribe the entry into the CSVs and close the issue.

**If you are a collaborator or maintainer** (you can edit the CSVs on a branch
or fork), add the model in three files, from the project root:

1. `data/models.csv`: add **one row** with a unique, stable `model_id`. Fill
   what the sources state; use `unknown` for `management_context`,
   `availability` and `programming_language` until determined. Set
   `last_reviewed` to today's date (`YYYY-MM-DD`).
2. `data/model_coverage.csv`: add **one row per province/territory** with a
   unique `coverage_id` (convention `<model_id>_<code>`, e.g. `rsyc_ab`) and the
   same `model_id`. Put sub-regions, ecosystems and US states in
   `region_detail`. Fill `ecozones` only when the documentation names them;
   blank means province-wide.
3. `data/model_links.csv`: add **one row per link** with a unique `link_id`
   (convention `<model_id>_<short_slug>`), the same `model_id`, a `link_type`
   (the purpose of the link: see the list above), a `title`, an HTTP(S) `url`
   and today's date as `accessed_date`. Every model needs at least one link, and
   a `public_download` model needs a `model_download` link.
4. Run both checks and fix anything they report:

   ```powershell
   Rscript scripts/validate_registry.R
   Rscript tests/testthat.R
   ```

5. Commit on a branch and open a pull request using the template, naming the
   public page(s) that support the entry.

See [Adding a model](docs/pipeline-and-workflow.md#adding-a-model) and
[Contributing](docs/pipeline-and-workflow.md#5-contributing) in the registry
guide for the full details.

## How to correct existing registry information

Corrections go through the same review: a change is a proposal until a
maintainer confirms it against a public page.

**If you do not have write access to this repository:**

1. Open the [**Suggest a change to an existing model** form](https://github.com/forest-carbon-tools-dfs/CanGrowthModels/issues/new?template=update-model.yml)
   (or go to **Issues → New issue** and choose *Suggest a change to an existing model*).
2. Name the model (its name or `model_id`) and choose what should change
   (a field, the provinces/territories, or a link).
3. Give the proposed value. For a link, write `type | title | URL`. Add the
   public URL that supports the correction and tick the confirmation box.

**If you are a collaborator or maintainer:**

1. Find the row in the right file: `data/models.csv` (model facts),
   `data/model_coverage.csv` (provinces/territories, regions, ecozones), or
   `data/model_links.csv` (links). Keep **one row per model** in `models.csv` and
   **one row per link** in `model_links.csv`.
2. Edit only the cell(s) the public source supports. Do not change `model_id`
   (if you must, update every row in coverage and links that refers to it).
   Allowed values are in the matching `*_schema_definition.csv`.
3. For a link you checked or changed, set `accessed_date` to today. For a model
   you re-reviewed, set `last_reviewed` to today. To remove a link, delete its
   row; a model should keep at least one link.
4. Run `Rscript scripts/validate_registry.R` and `Rscript tests/testthat.R`.
5. Commit on a branch and open a pull request. State which public page supports
   the change.

A passing validator checks structure and allowed values only; it cannot confirm
that an entry is accurate or current.

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
noted in the popup and on the model card. The programming language, availability,
and interface are recorded where known; open-source status and licensing are
not, so see each model's website and repository. Some species
lists are partial, so a missing search match does not establish that a model
excludes a species. There is no public deployment.
The validator checks every column against its schema definition (required values,
types, controlled vocabularies, keys, and cross-table references) but cannot
confirm that an entry is accurate or current.

## Copyright and License

Copyright (C) 2026 His Majesty the King in Right of Canada, as represented by
the Minister of Natural Resources.

The project-authored software and the registry data in `data/` are licensed
under the GNU General Public License, version 3 only (`GPL-3.0-only`).
See [LICENSE](LICENSE) for the full terms. Bundled third-party geospatial data
retains its own licence; see [data/geospatial/canada/license_gis.txt](data/geospatial/canada/license_gis.txt).
The software and data are provided without warranty, as described in the license.
Referenced models, other third-party software, and source materials retain their
own copyrights and licensing terms; this license does not grant rights to them.

## Citation

Sattler, D (2026). CanGrowthModels: A registry to explore forest growth and yield
models in Canada. Registry software (version 0.1.0).
<https://github.com/forest-carbon-tools-dfs/CanGrowthModels>.