# Contributing

Suggestions are welcome from anyone with knowledge of Canadian forest growth
models. All contributions require maintainer review.

## Adding a model or correcting information

Use the [forms and contact options in the README](README.md#contributing).
That section explains current private-repository access and the public submission
route after release. You do not need to edit CSVs or run checks to suggest a change.

## Ground rules

- Use public information only and keep entries brief and general.
- Give a public URL supporting the change. Do not include private or restricted material.
- Do not guess; leave a field blank or `unknown` where the schema allows.
- `model_coverage.jurisdiction_code` holds Canadian provinces and
  territories only; use `region_detail` for sub-regions, ecosystems, or US
  states.
- Do not commit credentials, source manuals, or generated output (`_site/`, `.quarto/`).
- Contributions are accepted under the [GPL-3.0-only licence](LICENSE) of this project and its data registry.

## Collaborators: edit the registry

Collaborators with repository access can prepare changes on a branch and open a
pull request. Forks are optional where repository permissions allow them.

| File | For a new model |
| --- | --- |
| [models.csv](data/models.csv) | One row with a unique, stable `model_id`; fill the required schema fields. |
| [model_coverage.csv](data/model_coverage.csv) | One row per province/territory, with the same `model_id` and a unique `coverage_id` (for example, `<model_id>_<code>`). |
| [model_links.csv](data/model_links.csv) | At least one public link, with the same `model_id` and a unique `link_id` (for example, `<model_id>_<short_slug>`). |

1. Create a branch; add rows above or edit the relevant existing rows.
2. Follow the [schemas and entry conventions](docs/pipeline-and-workflow.md#2-column-definitions).
   Keep IDs stable; if a `model_id` changes, update every referring coverage and link row.
3. Set the model's `last_reviewed` to the review date and each checked link's
   `accessed_date` to the date you checked it (`YYYY-MM-DD`).
4. [Run the validator, tests, and local render](docs/pipeline-and-workflow.md#running-the-checks).
   All must pass; inspect the affected model card and map.
5. Open a pull request describing the change, its public sources, and any related
   issue. Complete the [pull request checklist](.github/PULL_REQUEST_TEMPLATE.md).

## Schema changes

Discuss new fields through the README's contribution forms before implementing them.
A column change affects more than its CSV:

- Update the data header and the corresponding `*_schema_definition.csv`.
- Update affected catalogue/map displays and filters, sample test data in
  [test-registry.R](tests/testthat/test-registry.R), and the technical guide.
- Run the same checks and inspect the affected display.

## Maintainer review

- Check that public sources support the change; keep the entry brief.
- Confirm IDs, coverage, link types, and review/access dates.
- Confirm checks pass and the rendered card/map look right.
- Merge the reviewed pull request; close the related issue with a link to it.
  Merging does not itself approve public release or deployment.
