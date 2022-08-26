#!/bin/bash
#
# Copyright (C) 2021 TheStrechh <carlosarriagacm@gmail.com>
#

# Replace "root" with your own SSH Username in lowercase
username=root

# CCACHE UMMM!!! Cooks my builds fast
echo -e ${blu}"CCACHE is enabled for this build"${txtrst}
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export CCACHE_DIR=/root/ccache/$username
ccache -M 40G

# Prepare Environment and Device
source build/envsetup.sh
lunch lineage_surya-userdebug

# Build ROM
make bacon -j8
