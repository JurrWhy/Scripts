#!/bin/bash
#
# Copyright (C) 2021 TheStrechh <carlosarriagacm@gmail.com>
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
ccache -M 25G

# Build ROM
echo -e "What rom you want build?"
echo -e "1) AOSiP 2) AospExtended 3) ColtOS"
. build/envsetup.sh
read op
if [ $op = 1 ]
then
  echo "You are building AOSiP!"
  lunch aosip_surya-userdebug
  make kronic -j8
elif [ $op = 2 ]
then
  echo "You are building AospExtended!"
  lunch aosp_surya-userdebug
  make aex -j8
elif [ $op = 3 ]
then
  echo "You are building ColtOS!"
  lunch colt_surya-userdebug
  make colt -j8
else
  echo "WTTTTTTTTF!"
fi



