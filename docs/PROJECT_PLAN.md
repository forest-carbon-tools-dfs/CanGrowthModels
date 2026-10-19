CANADIAN FOREST GROWTH & YIELD MODEL REGISTRY

## Goal

Maintain a private-first registry that helps researchers discover Canadian forest growth and yield models and find where to learn more. The registry is a **pointer, not the authoritative source**: each entry is a brief, general summary plus links to the model's website, repositories, manuals, and publications. Researchers can filter models by species, management context, and geography, and use an interactive map to see which models are recorded for each province or territory. Models evolve and the registry is updated only periodically, so entries are deliberately general. Public release requires maintainer approval.

## Current Status (2026-10-19)

- The registry has three tables: `models` (24 rows), `model_coverage` (28 rows, province/territory plus optional region, drives the map), and `model_links` (32 rows).
- The schema was simplified: per-claim provenance and verification (`source_file`, `source_citation`, `source_year`, `source_reference`, `coverage_basis`, `species_scope`, `validation_evidence`, `verification_status`, `status`) and the `model_sources` table were removed. `contributors` and `last_reviewed` were added. See `docs/pipeline-and-workflow.md`.
- Quarto renders `index.qmd`, `models.qmd`, and `map.qmd`. Pre-render runs one schema-driven validator (`scripts/validate_registry.R`, built on `R/registry.R`); the pages read `data/` directly. Browser-side catalogue filters cover model type, management context, jurisdiction, and species keywords.
- Automated data-contract tests (`tests/testthat/`) and a GitHub Actions workflow (`.github/workflows/`) are in place; the workflow has not yet been run on GitHub.
- A jurisdiction-level Leaflet map is implemented in `map.qmd`. It reads the Canada province/territory shapefile in `data/geospatial/canada/` and `data/model_coverage.csv`; clicking a jurisdiction lists the models recorded for it, with any region noted. A filled province or territory is not an exact model footprint or a recommendation.
- Source PDFs and their Markdown conversions used while gathering information are kept outside the repository (`C:/CanGrowthModels_sources/`).
- The bundled Canada boundaries include a Simplemaps CC BY 4.0 attribution notice. The repository remains private and there is no public deployment. Generated site output is not committed.

Still outstanding: many optional fields are blank pending further information gathering; `programming_language` is `unknown` for all models until determined; open-source/licensing is not recorded (users are pointed to each model's website and repository); the data licence, eco-region mapping, and public release are not decided or implemented.

Open data-shape decisions:

- `model_coverage.model_name` repeats `models.model_name`; the validator warns if they drift. Dropping it and joining by `model_id` would remove that risk.
- `models.jurisdictions` overlaps `model_coverage`; the map uses coverage only.
- Semicolon-separated cells (species, outputs, inputs) limit filtering; consider long tables if species search needs to become exact.
- Decide whether a downloadable SQLite snapshot is wanted; it is the natural reason to reintroduce a build step that produces something other than copies of the CSVs.

## Implementation Roadmap

### 1. Stabilize the data contract and entries

- Keep `models.csv`, `model_coverage.csv`, and `model_links.csv` in line with the schema definitions; the validator and tests report any differences.
- Fill optional fields (species, minimum inputs, outputs, management options, other features, management context) as information is gathered; use `unknown` only where the schema allows it. Set `last_reviewed` when an entry is reviewed.
- Ensure every model has at least one link to its website or repository, since links are how users find current details. Keep link reachability separate from structural validation.

### 2. Build the static catalogue (complete)

- Render one model card with its summary, coverage (with region and stand scope where given), and grouped links.
- Retain the browser filters. Species lists may be partial, and jurisdiction matches do not imply province-wide suitability or a recommendation for planning.
- Consider separate model detail pages or pagination only if the growing catalogue warrants them.

### 3. Add the map (jurisdiction-level complete)

- Province/territory polygons come from the bundled, attributed boundary file; coverage rows come from `model_coverage.csv`. Map behavior is implemented in the R chunk in `map.qmd`.
- Sub-regions, ecosystems, and US states are recorded in `region_detail` and shown in popups, not drawn. An ecological-region layer would be a separate addition with documented regional boundaries.
- Before public deployment, review the map's first-load payload and simplify geometry if needed. Preserve the boundary attribution and license notice.

### 4. Automate and invite contributions

- CI (`.github/workflows/validate-and-render.yml`) runs the tests and renders the site; confirm it passes on the first push.
- Contributor guidance (`CONTRIBUTING.md`), issue forms, and a pull request template are written. Public users propose changes through issue forms; collaborators use pull requests. Test the flow with a contributor-style change before public release, and decide the data licence for contributions.

### 5. Publish when approved

- Keep GitHub private while the data and review process mature.
- Review third-party reuse terms for any seeded content (for example the retired Wikipedia-derived seed) before public release.
- Enable GitHub Pages only after maintainer approval and a successful CI-rendered build. Treat public release as an explicit decision, not an automatic consequence of merging.

## Immediate Next Step

Continue filling in links and optional fields model by model (ensure every model has a website or repository link), re-running the validator and tests after edits. Then push to test CI, try the issue forms and pull request template with a contributor-style change, and decide the data licence before any public release.

## Scope and Cost Controls

- Source manuals live outside the repository in `C:/CanGrowthModels_sources/`; do not open or process them without an explicit instruction. Ask before any bulk manual processing, additional large boundary-data download, paid service, or public deployment.
- Prefer small edits and local validation/render checks before bulk population or elaborate mapping.
- Do not commit credentials, source manuals, or generated Quarto output.
