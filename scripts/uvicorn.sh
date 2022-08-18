#!/bin/sh

help() {
  cat << EOF
Wrapper for running Uvicorn development server.
EOF
}

case $1 in -h | --help | help) help && exit ;; esac

# shellcheck disable=SC1007
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
project_dir="$(dirname "$source_dir")"

# ------------------------------------------------------------------------------

cd "$project_dir" || exit

poetry run uvicorn src.testbench_tuna.main:app --reload
