#!/bin/bash
#
# Copyright (C) 2021-2023 TheStrechh <carlosarriagacm@gmail.com>
#

# Replace "root" with your own SSH Username in lowercase
username=root

# Sync TWRP source
repo init --depth=1 -u https://github.com/TheStrechh/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync

# Clone device tree
git clone -b twrp-12.1 https://github.com/xiaomeme-surya/android_device_xiaomi_surya.git device/xiaomi/surya

# CCACHE UMMM!!! Cooks my builds fast
echo -e ${blu}"CCACHE is enabled for this build"${txtrst}
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export CCACHE_DIR=/$username/ccache/twrp
ccache -M 40G

# Prepare Environment and Device
source build/envsetup.sh
lunch twrp_surya-eng

# Build TWRP
export ALLOW_MISSING_DEPENDENCIES=true
make recoveryimage -j8
