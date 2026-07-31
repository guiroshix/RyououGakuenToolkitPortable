#!/bin/sh

set -e

make clean
make

mkdir -p portable

cp apps/RGT* \
   apps/RGO* \
   apps/CPK* \
   apps/Script* \
   apps/Image* \
   apps/Auto* \
   portable/
