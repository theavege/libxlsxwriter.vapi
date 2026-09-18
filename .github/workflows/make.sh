#!/usr/bin/env bash

set -euo pipefail

source '/etc/os-release'
case ${ID:?} in
    debian | ubuntu) sudo bash -c '
        apt-get update
        apt-get install -y meson ninja-build valac pkg-config libxlswriter-dev
    ' ;;
    fedora | alma) sudo dnf install -y meson vala libxlswriter-devel ;;
esac 1>/dev/null

meson setup build
meson compile -C build
meson test -C build --print-errorlogs
DESTDIR="${PWD}/destdir" meson install -C build
