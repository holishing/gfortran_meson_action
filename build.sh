#!/usr/bin/env bash

set -eux
CONFIG_PARAMETERS=$*
mkdir -p /destdir
/usr/bin/meson builddir ${CONFIG_PARAMETERS}
cd builddir
/usr/bin/ninja
DESTDIR=/builddir /usr/bin/ninja install
