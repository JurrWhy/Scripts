#!/bin/bash
#
# Copyright (C) 2020 TheStrechh <carlosarriagacm@gmail.com>
#

# Export idk
export KBUILD_BUILD_USER="Charly"
export KBUILD_BUILD_HOST="EroticHost"
export ALLOW_MISSING_DEPENDENCIES=true

# CCACHE UMMM!!! Cooks my builds fast
echo -e ${blu}"CCACHE is enabled for this build"${txtrst}
export CCACHE_EXEC=$(which ccache)
export USE_CCACHE=1
export CCACHE_DIR=/home/charlyffag/ccache
ccache -M 30G

# Clean build
echo -e "Cleaned SHIT"
make clean && make clobber

# Build ROM
echo -e "BUILDING ROM :D"
. build/envsetup.sh
lunch derp_surya-userdebug
maka derp -8
