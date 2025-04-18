#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/HorizonDroidLab/manifest.git -b fifteen --git-lfs
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/germaniumsculk/local_manifests_clo .repo/local_manifests -b horizondroid-15-qpr2
echo "============================"
echo "Local manifest clone success"
echo "============================"

# Build Sync
/opt/crave/resync.sh 
echo "============="
echo "Sync success"
echo "============="

# Curl Signing Files
git clone https://github.com/germaniumsculk/certs

#SIGNING_KEY_PATH ?= certs
#RELEASE_KEY := $(SIGNING_KEY_PATH)/releasekey
#SIGNING_KEY_PATH ?= certs
#RELEASE_KEY := $(SIGNING_KEY_PATH)/releasekey
#PRODUCT_DEFAULT_DEV_CERTIFICATE := $(RELEASE_KEY)
#PRODUCT_OTA_PUBLIC_KEYS := $(RELEASE_KEY)

# Have to add these flags in device.mk

# Build/Soong Cherry pick
cd build/soong
git fetch https://github.com/LineageOS/android_build_soong refs/changes/98/426698/1 && git cherry-pick FETCH_HEAD
cd ../..

# Export
export BUILD_USERNAME=Germanium 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "============="

# Lunch
lunch horizon_mi439-bp1a-userdebug

# Build
mka horizon
