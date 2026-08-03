#!/bin/sh

set -e

make clean

make -B

chmod +x umd-replace-linux-x86_64 2>/dev/null
chmod +x umd-replace-linux-arm64 2>/dev/null
