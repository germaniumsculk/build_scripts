#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/crdroidandroid/android.git -b 12.1 --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/musfiqurrahmanfahim/local_manifests .repo/local_manifests
echo "============================"
echo "Local manifest clone success"
echo "============================"

# build
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Unnecessary things to remove.
rm -rf hardware/lineage/interfaces/health
echo "============="
echo "Removing Done"
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
lunch lineage_Mi439_4_19-userdebug
echo "============="

# Build rom
mka build
