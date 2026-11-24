#!/usr/bin/env bash
# 9aia/.github gate — org profile repo: markdown, packs/, and the
# weekly loc.yml reusable-workflow caller. Nothing to build or test,
# so the org conformance leg is the whole check.
set -euo pipefail
cd "$(dirname "$0")/.."

# --- mimus standard: org conformance leg (9aia-standard pack) ------
# Specs + runner ship in the 9aia-standard tamias pack; `tamias
# install` is a cache hit after the first fetch. Missing tooling
# skips with a warning; fail-severity spec violations fail the gate.
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
if command -v tamias >/dev/null 2>&1 && command -v mimus >/dev/null 2>&1; then
  _std_label="$(tamias install --no-bins 'git:github.com/9aia/workspace//libraries/9aia-standard' 2>/dev/null | sed -n 's/^installed \([^ ]*\).*/\1/p' | tail -1)"
  _std_dir=""
  [ -n "$_std_label" ] && _std_dir="$(tamias info "$_std_label" --json 2>/dev/null | python3 -c 'import json,sys; print(json.load(sys.stdin).get("dir",""))' 2>/dev/null || true)"
  # Offline rerun fallback: whatever single install already exists.
  [ -z "$_std_dir" ] && _std_dir="$(tamias info 9aia-standard --json 2>/dev/null | python3 -c 'import json,sys; print(json.load(sys.stdin).get("dir",""))' 2>/dev/null || true)"
  if [ -n "$_std_dir" ] && [ -f "$_std_dir/ci-standard.sh" ]; then
    bash "$_std_dir/ci-standard.sh"
  else
    echo "ci-standard: 9aia-standard pack unavailable — leg skipped" >&2
  fi
else
  echo "ci-standard: tamias/mimus not on PATH — leg skipped" >&2
fi
