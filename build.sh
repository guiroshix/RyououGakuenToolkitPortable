#!/bin/sh

set -e

make clean
make

mkdir -p portable
find . -maxdepth 1 -type f -executable -exec cp {} portable/ \;
