# Registry maintenance: shared human and AI instructions

CanGrowthModels is a public-information registry, not a collection of model
implementations. Keep routine corrections small; do not investigate the models
themselves unless the request requires it.

## Find the right record

| Requested change | Source of truth |
| --- | --- |
| Model facts or review date | [models.csv](../data/models.csv), keyed by `model_id` |
| Geographic coverage | [model_coverage.csv](../data/model_coverage.csv), keyed by `coverage_id` |
| Website, repository, tool, download, or publication link | [model_links.csv](../data/model_links.csv), keyed by `link_id` |

Resolve the supplied model name to its existing `model_id`. Read only the
relevant rows, table header, and affected `*_schema_definition.csv`.
Do not scan the repository, read unrelated attachments, open geospatial assets
or model implementations, or delegate an ordinary registry edit.

## Fast path: CSV-only additions and corrections

1. Apply the requested facts only. Preserve stable IDs, unrelated rows, and
   existing work. Ask only when the target or supplied facts are genuinely ambiguous.
2. For a link, check whether the resource is already recorded. Add one row or
   correct the existing row; do not create duplicate resources. Check a new or
   replacement URL once for reachability; do not clone or read the linked repository.
3. Choose `link_type` by purpose: `run_tool` for R packages, wrappers, or scripts
   that help run a model; `model_download` for obtaining the model;
   `source_code` only for the model's own code. GitHub hosting does not determine
   the type. A runner link does not establish the model's programming language.
4. Set the changed model's `last_reviewed` to today's review date. Set
   `accessed_date` only for links actually checked, using `YYYY-MM-DD`.
   Report an unsuccessful URL check explicitly; do not claim it was verified.
5. For a new model, add its model row, supported Canadian jurisdiction coverage,
   and at least one public link. Follow the affected schemas; do not guess
   unknown facts or change the schema to accommodate missing information.
6. Run the existing registry validator once from the repository root:

   ```powershell
   Rscript --vanilla scripts\validate_registry.R
   ```

   On macOS/Linux, use `scripts/validate_registry.R`. Use an existing R
   installation. If local R is unavailable, report that validation is blocked
   and use CI if a push is approved; do not install or repair local tooling for
   a small CSV edit. Fix errors caused by the change; do not suppress errors or
   repair unrelated existing warnings.

Do not run the full test suite, render locally, inspect the live website, or
investigate deployment for an ordinary CSV-only edit. CI already runs the full
tests and site render. Schema, R, and display changes need the relevant checks in
the [technical guide](../docs/pipeline-and-workflow.md#running-the-checks).
Documentation-only changes need no registry tests or render.

## Finish and publish only when requested

- Leave changes local unless the current request authorizes a commit/push or PR.
  Approval for an earlier task is not approval for a new push. Do not ask for
  approval again when the current request already supplies it.
- Approved pushes to `main` publish automatically after CI passes. Do not run
  `quarto publish`, edit generated output, or change Pages settings for routine edits.
- If publication or a live-page problem is in scope, use this checkout's
  `origin`, wait for its workflow and Pages deployment, and verify only the
  affected entry/filter. Never assume a fork should publish to the upstream repo.
  Prefer a targeted HTML/DOM check over a whole-page snapshot.
- Finish with the changed entry, checks actually completed, and whether changes
  are local, pushed, or live. Keep the response brief; do not claim unrun checks passed.

Example one-request workflow: "For OSM-ACD, add this GitHub repository as a tool
for running the model; keep other facts unchanged. Validate, commit, and push."
