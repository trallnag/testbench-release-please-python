#!/bin/sh

help() {
  cat << EOF
Wrapper for running shellcheck.
EOF
}

case $1 in -h | --help | help) help && exit ;; esac

# shellcheck disable=SC1007
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
project_dir="$(dirname "$source_dir")"

# ------------------------------------------------------------------------------

cd "$project_dir" || exit

shellcheck \
  --check-sourced \
  --color=always \
  --format=tty \
  --shell=sh \
  scripts/*.sh
