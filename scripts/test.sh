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
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

. "$script_dir/base.sh"

# ------------------------------------------------------------------------------

cd "$PROJECT_DIR" || exit 1

poetry run pytest \
  --cov=src/$PACKAGE_NAME \
  --cov-report=term-missing:skip-covered \
  --cov-report=xml \
  tests/
