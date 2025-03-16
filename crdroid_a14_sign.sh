#!/bin/bash

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/crdroidandroid/android.git -b 14.0
echo "=================="
echo "Repo init success"
echo "=================="

# Local manifests
git clone https://github.com/germaniumsculk/local_manifests_clo .repo/local_manifests -b crdroid-14
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

# Export
export BUILD_USERNAME=Germanium 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "============="

# Lunch
lunch lineage_mi439-ap2a-userdebug

# Build
mka bacon
