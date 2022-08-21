#!/bin/sh

help() {
  cat << EOF
Wrapper for running Uvicorn development server.
EOF
}

case $1 in -h | --help | help) help && exit ;; esac

# shellcheck disable=SC1007
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

. "$script_dir/base.sh"

cd "$PROJECT_DIR" || exit 1

# ------------------------------------------------------------------------------

poetry run uvicorn src.$PACKAGE_NAME.main:app --reload
