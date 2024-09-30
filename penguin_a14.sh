#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/Project-PenguinOS/manifest -b unity
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/musfiqurrahmanfahim/local_manifests_clo .repo/local_manifests -b aospa-uvite
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Build Sync
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Removing Unnecessary things 
rm -rf device/qcom/common/sepolicy/pixel/vendor/flipendo.te
echo "================="
echo "I love you Salih"
echo "================="

# Export
export BUILD_USERNAME=F3
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Git
cd device/xiaomi/mi439
git fetch https://gerrit.aospa.co/AOSPA/android_device_xiaomi_mi439 refs/changes/57/41357/1 && git cherry-pick FETCH_HEAD
cd ../../../
echo "======= Git Changes Done ======"

# Set up build environment
./rom-build.sh mi439_419
