#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/Project-PenguinOS/manifest -b unity
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/germaniumsculk/local_manifests_clo .repo/local_manifests -b penguin-unity
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Build Sync
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Export
export BUILD_USERNAME=F3
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Git
cd vendor/google/gms
curl -O https://raw.githubusercontent.com/germaniumsculk/android_vendor_gms/refs/heads/main/gms-vendor.mk
cd ../../../
echo "======= Git Changes Done ======"

# Set up build environment
./rom-build.sh mi439_419 -s ~/.android-certs
