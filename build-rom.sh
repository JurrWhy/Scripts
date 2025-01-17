#!/bin/bash
#
# Copyright (C) 2021-2023 TheStrechh <carlosarriagacm@gmail.com>
#

# Replace "root" with your own SSH Username in lowercase
username=root
romname=pixelos

# CCACHE UMMM!!! Cooks my builds fast
echo -e ${blu}"CCACHE is enabled for this build"${txtrst}
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export CCACHE_DIR=/$username/ccache/$romname
ccache -M 40G

# Prepare Environment and Device
. build/envsetup.sh
lunch aosp_marble-userdebug

# Build ROM
make bacon
