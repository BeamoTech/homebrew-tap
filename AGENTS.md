# Homebrew tap — agent guide

`AGENTS.md` is the sole guide for all agents.

Package distribution manifests for Beamo tools. Read [README.md](README.md) and
the relevant formula before editing. Application source lives in separate repos.

## CI, cost and documentation

Read `~/dev/AGENTS.md` for shared checkout, cost, documentation and storage rules.

- Iterate locally; run the applicable full local gate before release. Hosted
  CI is only for necessary final public/customer production verification,
  never routine work, draft PRs, previews or unshipped instruction/doc maintenance. Local
  scripts named `ci` remain local; do not push merely to trigger CI.
- Run the fewest required hosted jobs. Reuse only evidence for the exact final
  SHA, artifacts and config; revalidate after changes. Fix every candidate/gate
  failure and material warning, then rerun until all applicable checks pass.
  Pending, canceled, blocked, timed out and unexpected skips are not passes;
  path skips require workflow evidence. Never weaken tests/coverage or retry blindly.
- Check automatic triggers and gate publication on successful verification.
  Preserve required statuses, branch protection, scheduled security/ops checks,
  native acceptance and approvals; record proof and verify after deployment.
  No hosted CI means retain local/manual gates. Changes to automation or
  publication need task authority. Avoid duplicate providers/runs.

**Project gate:** Use local Ruby syntax and applicable Homebrew audit checks first. A manifest
publication affects public installs: require verified upstream assets and the
necessary final native install/update checks. Dispatch `verify-claudex.yml`
only when its Claudex qualification is needed for that release. Guide edits
must not trigger installer jobs or install tools into the user's environment.

## Package integrity

Keep versions, architecture mappings, dependencies, release URLs and SHA-256
digests aligned with verified upstream release bytes. Never guess a checksum.
Validate changed Ruby formulas with `ruby -c`; use the available Homebrew audit
and installation checks for package changes, recording unavailable native checks.
Do not install tools into the user's environment merely to review documentation.
Publishing manifests affects installs; preserve approval and release boundaries.
Preserve unrelated work and stage only explicit owned paths.
