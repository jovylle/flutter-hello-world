#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Download Flutter SDK
echo "Downloading Flutter SDK..."
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.5-stable.tar.xz -q
tar xf flutter_linux_3.10.5-stable.tar.xz
export PATH="$PATH:$(pwd)/flutter/bin"

# Pre-cache Flutter dependencies
flutter precache

# Check the Flutter version (optional)
flutter --version

# Install any missing dependencies
flutter doctor
