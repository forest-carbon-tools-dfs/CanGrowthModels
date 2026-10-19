CANADIAN FOREST GROWTH & YIELD MODEL REGISTRY

## Goal

Maintain a private-first, source-traceable registry of Canadian forest growth and yield models. Researchers should be able to filter models by species, stand conditions, and geography, inspect supporting sources, and use an interactive map to see model applicability. Public release requires maintainer approval.

## Current Status (2026-10-16)

- The latest local render validates 22 model rows, 34 coverage claims, 32 typed links, and six maintainer-supplied Markdown filename associations. The associations do not establish which claims a document supports.
- Quarto renders `index.qmd`, `models.qmd`, and `map.qmd`, excluding local manuals. Pre-render runs four R validators and rebuilds separate website-ready model, coverage, and link files. Browser-side catalogue filters cover model type, management context, jurisdiction, and species keywords.
- A jurisdiction-level Leaflet map is implemented in `map.qmd`. It reads the Canada province/territory shapefile in `data/geospatial/canada/` and the generated coverage CSV; clicking a jurisdiction opens its claims. A filled province or territory is not an exact model footprint or a recommendation.
- The bundled Canada boundaries include a Simplemaps CC BY 4.0 attribution notice. The map has been rendered and locally checked; the repository remains private and there is no public deployment. Generated site output is not committed.

Still outstanding: most model and link facts remain unverified; `source_file` is required by the schema despite blank values in provisional model rows. Programming language and open-source/licensing fields are not yet structured. Automated data-contract tests, CI, contributor workflow, and public release are not implemented. Eco-region mapping is not implemented.

## Implementation Roadmap

### 1. Stabilize the data contract and pilot records

- Review the model, coverage, link, and document-association schemas together. Keep source-file associations distinct from evidence for individual claims; claim-by-claim provenance is deferred.
- Add source-backed programming language and open-source/licensing fields; do not infer either from the presence of a software or source-code link.
- Resolve the provisional-row `source_file` rule without inventing scanned documents. Complete validation for required values, vocabularies, dates, references, and URL format, with automated tests. Keep link reachability separate from structural validation.
- Review provisional records and external links before public release; keep unsupported facts unknown and records unverified until checked. Do not require claim-level manual tracing for the current pilot.
- Confirm how subregional claims such as North-eastern BC should be displayed when the map geometry is only provincial.

### 2. Build the static catalogue (pilot complete)

- Keep model rows, coverage claims, and typed links separate in the data build and render one model card with grouped links and qualified coverage details.
- Retain the working browser filters and visible unknown/unverified states. Species lists may be partial, and jurisdiction matches do not imply province-wide suitability or a recommendation for planning.
- Consider separate model detail pages only if the growing catalogue warrants them; they are not needed for the pilot.

### 3. Add the map (jurisdiction-level pilot complete)

- The pilot uses the bundled, attributed Canada province/territory boundaries and the existing `model_coverage.csv` claims. Map behavior is implemented in the R chunk in `map.qmd`; no standalone map-update script is required.
- Keep subregional qualifications in claim details when the geometry does not support a defensible polygon. A jurisdiction match alone is not an endorsement or an exact model footprint.
- Add an ecological-region layer only where model sources support a documented regional match. Ecozones/ecoregions are display units, not automatic evidence of model validity.
- Before public deployment, review the map's first-load payload and simplify geometry if needed. Preserve the boundary attribution and license notice.

### 4. Automate and invite contributions

- Add CI to run all validators and render the Quarto site on changes.
- Add contributor guidance and issue/PR templates for proposing models, sources, coverage claims, and corrections.
- Test the workflow with a contributor-style change before broad data entry.

### 5. Publish when approved

- Keep GitHub private while the data, licensing, and review process mature.
- Enable GitHub Pages only after maintainer approval and a successful CI-rendered build. Treat public release as an explicit decision, not an automatic consequence of merging.

## Immediate Next Step

Continue carefully scoped pilot data and link entry while resolving the `source_file` rule for provisional rows and adding data-contract tests. As the coverage schema changes, update its validator, the `map.qmd` popup fields, and documentation together. Add programming-language, code-access, and licensing fields only as evidence is supplied; freely available code is not automatically open source. Claim-by-claim tracing to local manuals can wait. Decide whether a downloadable SQLite snapshot is needed alongside browser filters. Do not process manuals or deploy publicly without approval.

## Scope and Cost Controls

- Do not open or process files under `GYmodelPDFmanuals/`. Ask before any bulk manual processing, additional large boundary-data download, paid service, or public deployment.
- Prefer small pilot records and local validation/render checks before bulk population or elaborate mapping.
- Do not commit credentials, local-only manuals, or generated Quarto output.
