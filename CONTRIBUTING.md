# Contributing to 9aia

Thanks for your interest. 9aia is a fleet of small, single-mechanism
engines — contributions should keep them small.

## Before you start

- Read the target repo's `AGENTS.md` — it is the authoritative map of
  layout, commands, rules, and boundaries.
- Open an issue first for anything non-trivial; small fixes can go
  straight to a branch.
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
deliverable and review is continuous. For external contributors, open
a PR against `main`; maintainers merge.

## Reporting security issues

Do **not** open public issues for vulnerabilities — see
[SECURITY.md](./SECURITY.md).
