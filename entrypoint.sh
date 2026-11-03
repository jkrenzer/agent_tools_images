#!/usr/bin/env bash
set -euo pipefail

export VIRTUAL_ENV="${VIRTUAL_ENV:-/opt/venv}"
export PATH="${VIRTUAL_ENV}/bin:${PATH}"

if [[ -f "/workspace/poetry.lock" || -f "/workspace/pyproject.toml" ]]; then
  poetry config virtualenvs.create false --local >/dev/null 2>&1 || true
fi

exec "$@"
