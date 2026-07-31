#!/bin/sh

set -e

make clean
make

mkdir -p portable

cp RGT* RGO* CPK* Script* Image* AutoTranslate* portable/
