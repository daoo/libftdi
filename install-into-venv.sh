#!/usr/bin/env bash

# Installs built libftdi python bindings into a python virtual environment.

set -eu

ftdi="$PWD"
target="$1/Lib/site-packages"

install() {
  echo cp "$@" "$target/"
  cp "$@" "$target/"
}

install "$ftdi/python/ftdi1.py"
install "$ftdi/python/_ftdi1.pyd"
install "$ftdi/src/libftdi1.dll"
install "/mingw64/bin/libiconv-2.dll"
install "/mingw64/bin/libgcc_s_seh-1.dll"
install "/mingw64/bin/libintl-8.dll"
install "/mingw64/bin/libstdc++-6.dll"
install "/mingw64/bin/libusb-1.0.dll"
