#!/bin/sh

help() {
  cat << EOF
Wrapper for running tests with Pytest.

- Includes code coverage report generation.
- Used within GitHub Actions workflows.
- Used for local and interactive development.
EOF
}

case $1 in -h | --help | help) help && exit ;; esac

# shellcheck disable=SC1007
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
project_dir="$(dirname "$source_dir")"

# ------------------------------------------------------------------------------

cd "$project_dir" || exit

poetry run pytest \
  --cov=src/testbench_tuna \
  --cov-report=term-missing:skip-covered \
  --cov-report=xml \
  tests/
