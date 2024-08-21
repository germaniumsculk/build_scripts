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

# Add ASB support
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/27/379127/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/28/379128/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/29/379129/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/30/379130/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/31/379131/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/32/379132/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/33/379133/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/34/379134/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/35/379135/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/36/379136/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_apps_Camera2 refs/changes/37/379137/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_apps_Nfc refs/changes/38/379138/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_apps_Settings refs/changes/39/379139/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/40/379140/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_nxp_opensource_packages_apps_Nfc refs/changes/41/379141/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/42/379142/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/66/380166/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/01/381701/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/02/381702/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/03/381703/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/04/381704/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/05/381705/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/06/381706/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/07/381707/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/08/381708/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/09/381709/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/10/381710/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_modules_Permission refs/changes/11/381711/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_providers_DownloadProvider refs/changes/12/381712/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/13/381713/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/14/381714/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_core refs/changes/15/381715/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/16/381716/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/17/381717/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/50/382650/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/96/385396/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/97/385397/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/98/385398/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/99/385399/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/00/385400/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/01/385401/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/02/385402/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/03/385403/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/04/385404/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/05/385405/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/06/385406/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/07/385407/3 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/08/385408/3 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/25/385425/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/11/389011/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/12/389012/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/13/389013/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/14/389014/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/87/389187/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android refs/changes/13/392413/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/15/392415/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_external_sonivox refs/changes/14/392414/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/16/392416/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/26/394526/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/27/394527/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/28/394528/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/29/394529/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/30/394530/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/31/394531/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/32/394532/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/33/394533/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/34/394534/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/35/394535/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/36/394536/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/37/394537/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/38/394538/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/39/394539/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/40/394540/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/41/394541/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_modules_StatsD refs/changes/42/394542/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_libfmq refs/changes/43/394543/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android refs/changes/23/394523/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/34/395134/2 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/47/397447/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/48/397448/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/49/397449/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/50/397450/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/51/397451/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_modules_StatsD refs/changes/52/397452/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_providers_MediaProvider refs/changes/53/397453/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/54/397454/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/55/397455/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/56/397456/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/07/399507/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_av refs/changes/08/399508/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/09/399509/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/10/399510/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/11/399511/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/12/399512/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_frameworks_base refs/changes/13/399513/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_hardware_interfaces refs/changes/14/399514/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_packages_apps_Bluetooth refs/changes/15/399515/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_system_bt refs/changes/16/399516/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_packages_apps_Bluetooth refs/changes/17/399517/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_vendor_qcom_opensource_system_bt refs/changes/18/399518/1 && git cherry-pick FETCH_HEAD
git fetch https://github.com/LineageOS/android_build refs/changes/51/399551/1 && git cherry-pick FETCH_HEAD

# Lunch
lunch lineage_Mi439_4_19-userdebug
echo "============="

# Build rom
mka bacon
