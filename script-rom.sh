#!/bin/bash
#
# Copyright (C) 2020 TheStrechh <carlosarriagacm@gmail.com>
#

# Export idk
export KBUILD_BUILD_USER="TheStrechh"
export KBUILD_BUILD_HOST="EroticHost"
export ALLOW_MISSING_DEPENDENCIES=true

# CCACHE UMMM!!! Cooks my builds fast
echo -e "CCACHE is enabled for this build"
export USE_CCACHE=1
CCACHE_EXEC=$(command -v ccache)
export CCACHE_EXEC

# Clean build
echo -e "Cleaned SHIT"
make clean && make clobber

# Build ROM
echo -e "BUILDING ROM :D"
. build/envsetup.sh
lunch aicp_lavender-userdebug
make bacon -j8
