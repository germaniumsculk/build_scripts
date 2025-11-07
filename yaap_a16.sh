# --------------------------------------
# Make sure that you know what are you
# wanna do with this.
# The LineageOS Copyright 2022©
# --------------------------------------

rm -rf .repo/local_manifests/

# repo init rom
repo init -u https://github.com/yaap/manifest.git -b sixteen --git-lfs
echo "=================="
echo "Repo init done"
echo "=================="

# Local manifests
git clone https://github.com/germaniumsculk/local_manifests_lavender .repo/local_manifests -b yaap-16.x
echo "============================"
echo "Local manifest clone done"
echo "============================"

# Build Sync
/opt/crave/resync.sh 
echo "============="
echo "Sync done"
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

# FSgen removal
rm -rf build/soong/fsgen
rm -rf hardware/google/graphics

# Export
export BUILD_USERNAME=Germanium 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "============="

# Lunch
lunch yaap_lavender-user

# Build
m yaap
