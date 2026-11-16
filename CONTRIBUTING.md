# Contributing to 9aia

Thanks for your interest. 9aia is a fleet of small, single-mechanism
engines — contributions should keep them small.

## Before you start

- Read the target repo's `AGENTS.md` — it is the authoritative map of
  layout, commands, rules, and boundaries.
- 9aia does not run public issue or pull request queues. For
  anything non-trivial, coordinate first by emailing
  luisfuturist+9aia@gmail.com; small fixes can go straight to a
  pushed branch.
- Match the repo's existing conventions (language, commit prefixes,
  doc style).

## Ground rules

- English everywhere: code, comments, docs, commits.
- No `unsafe` in Rust; workspace lints apply.
- Ports-and-adapters: domain crates stay pure (no I/O).
- Docs are generated where a generator exists — fix the generator,
  never the output.
- Keep commits focused; conventional prefixes (`feat:`, `fix:`,
  `docs:`, `chore:`, `refactor:`).

## Workflow

There is no PR-review bottleneck by design — pushed branches are the
deliverable and review is continuous. Because the org does not use
public pull requests, external contributors should coordinate by
email first and push a branch they own; maintainers pull and merge.

## Reporting security issues

Do **not** open public issues for vulnerabilities — see
[SECURITY.md](./SECURITY.md).
