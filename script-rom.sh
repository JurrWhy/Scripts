#!/bin/bash
#
# Copyright (C) 2021 TheStrechh <carlosarriagacm@gmail.com>
#

# Export idk
export KBUILD_BUILD_USER="Charly"
export KBUILD_BUILD_HOST="EroticHost"
export ALLOW_MISSING_DEPENDENCIES=true

# CCACHE UMMM!!! Cooks my builds fast
USE_CCACHE=1
CCACHE_DIR="/home/charlyffag/ccache"
CCACHE_EXEC="$(command -v ccache)"
export USE_CCACHE CCACHE_DIR CCACHE_EXEC
ccache -M 30G

# Build ROM
. build/envsetup.sh
lunch lineage_surya-userdebug
make bacon -j8
