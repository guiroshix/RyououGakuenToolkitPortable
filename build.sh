#!/bin/sh

set -e

echo "Cleaning..."
make clean

echo "Building..."
make -B

echo "Setting executable permissions..."
chmod +x umd-replace-linux-x86_64 2>/dev/null || true
chmod +x umd-replace-linux-arm64 2>/dev/null || true

echo "Build complete!"
