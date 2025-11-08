# Export
export BUILD_USERNAME=Germanium 
export BUILD_HOSTNAME=crave
export BUILD_BROKEN_MISSING_REQUIRED_MODULES=true
echo "======= Export Done ======"

# Set up build environment
source build/envsetup.sh
echo "============="

# Lunch
lunch lineage_lavender-bp2a-user

# Clean Build
make clean
# Then rebuild
make -j$(nproc --all)
