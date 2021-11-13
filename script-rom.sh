#!/bin/bash
#
# Copyright (C) 2021 TheStrechh <carlosarriagacm@gmail.com>
#

# Export idk
export KBUILD_BUILD_USER="Charly"
export KBUILD_BUILD_HOST="EroticHost"
export ALLOW_MISSING_DEPENDENCIES=true

# CCACHE UMMM!!! Cooks my builds fast
export CCACHE_EXEC="$(command -v ccache)"
export CCACHE_SLOPPINESS=time_macros,include_file_mtime,file_macro
export USE_CCACHE=true
export CCACHE_DIR=/home/charlyffag/ccache
export CCACHE_CPP2=yes
ccache -M 30G

# Build ROM
. build/envsetup.sh
lunch lineage_surya-userdebug
make bacon -j8
