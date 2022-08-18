#!/bin/sh

help() {
  cat << EOF
Wrapper for running shfmt.
EOF
}

case $1 in -h | --help | help) help && exit ;; esac

# shellcheck disable=SC1007
source_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
project_dir="$(dirname "$source_dir")"

# ------------------------------------------------------------------------------

cd "$project_dir" || exit

shfmt \
  --binary-next-line \
  --diff \
  --indent=2 \
  --keep-padding \
  --list \
  --posix \
  --simplify \
  --space-redirects \
  --write \
  scripts/*.sh
