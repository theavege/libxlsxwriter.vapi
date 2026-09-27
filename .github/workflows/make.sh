#!/usr/bin/env bash

set -euo pipefail
source '/etc/os-release'
if ! command -v vala; then
    case ${ID:?} in
        debian | ubuntu)
            sudo apt-get update
            sudo apt-get install -y valac libxlsxwriter-dev
            ;;
        fedora | alma) sudo dnf install -y vala libxlsxwriter-devel ;;
    esac 1>/dev/null
fi

shellcheck --external-sources "${0}"
shfmt -ci -fn -i 4 -d "${0}"

declare -ar VAR=(
    --verbose
    --fatal-warnings
    --Xcc=-O3
    --cc=clang
    --vapidir=src
    --enable-{checking,mem-profiler,gobject-tracing}
    --pkg=libxlsxwriter
    -X -lxlsxwriter
)

vala "${VAR[@]}" 'tests/test_bindings.vala'
vala "${VAR[@]}" 'examples/simple.vala'
vala "${VAR[@]}" 'examples/advanced.vala'
