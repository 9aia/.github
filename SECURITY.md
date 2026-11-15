# Security Policy

## Reporting a vulnerability

Please report suspected vulnerabilities **privately** — do not open a
public issue.

- Email: luisfuturist+9aia@gmail.com with "SECURITY" in the subject, or
- Use GitHub's private vulnerability reporting on the affected repo
  (Security → Report a vulnerability).

Please include: affected repo/component, reproduction steps, and impact
assessment. We aim to acknowledge within 72 hours.

## Scope

9aia tools run on the maintainer's and users' own machines. The highest-
risk surfaces are:

- `cuora` — secrets handling (sealed storage, broker transports)
- `tamias` — content fetching/installation (pack sources, drivers)
- `bupha` — CI execution (runner isolation, worktree handling)
- `mimus`/`kuda`/`sturn` — anything that executes commands from repo
  content or agent output

Config that executes arbitrary commands (`[check].allow_exec`-style
flags) is opt-in and documented as such; bypasses of those gates are
in scope.

## Supported versions

Only the latest release of each tool is supported. The org ships fast;
upgrade rather than patch old versions.
