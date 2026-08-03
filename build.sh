#!/bin/sh

set -e

make clean

make -B

chmod umd-replace-linux-x86_64 2>/dev/null
chmod umd-replace-linux-arm64 2>/dev/null