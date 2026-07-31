#!/bin/sh

set -e

make clean
make

mkdir -p portable

find apps -type f -executable -exec cp {} portable/ \;
