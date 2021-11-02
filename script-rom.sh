#!/bin/bash
#
# Copyright (C) 2021 TheStrechh <carlosarriagacm@gmail.com>
#

# Export idk
export KBUILD_BUILD_USER="Charly"
export KBUILD_BUILD_HOST="EroticHost"
export ALLOW_MISSING_DEPENDENCIES=true

# CCACHE UMMM!!! Cooks my builds fast
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export CCACHE_DIR=/home/charlyffag/ccache
ccache -M 25G

# Build ROM
. build/envsetup.sh
lunch aosp_surya-userdebug
make aex -j8
