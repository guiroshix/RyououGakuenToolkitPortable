#!/bin/sh

set -e

pkg update -y
pkg install -y proot-distro
proot-distro install ubuntu || true
