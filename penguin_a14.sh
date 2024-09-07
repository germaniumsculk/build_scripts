#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/Project-PenguinOS/manifest -b unity
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/musfiqurrahmanfahim/local_manifests_clo .repo/local_manifests -b udc-2
echo "============================"
echo "Local manifest clone success"
echo "============================"

# build
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Export
export BUILD_USERNAME=F3
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh 
echo "====== Envsetup Done ======="

# Lunch
lunch aosp_mi439-ap2a-userdebug
echo "============="

# Build rom
mka bacon
