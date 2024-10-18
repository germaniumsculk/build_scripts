#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/The-Pixel-Project/manifest -b fourteen-qpr3 -g default,-mips,-darwin,-notdefault --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/germaniumsculk/local_manifests_clo .repo/local_manifests -b tpp/a14
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Build Sync
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Export
export BUILD_USERNAME=Germanium 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "============="

# Lunch
lunch aosp-mi439_userdebug

# Build
m bacon
