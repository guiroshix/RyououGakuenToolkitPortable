#!/bin/sh

set -e

make clean

make -B

chmod UMDReplaceK-Linux.bin 2>/dev/null
chmod UMDReplaceK-Linux-Arm.bin 2>/dev/null