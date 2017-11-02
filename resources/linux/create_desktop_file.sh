#!/bin/sh
set -e
WORKING_DIR=`pwd`
THIS_PATH=`readlink -f $0`
cd `dirname ${THIS_PATH}`
FULL_PATH=`pwd`
cd ${WORKING_DIR}
cat <<EOS > Scrybe.desktop
[Desktop Entry]
Name=Scrybe
Comment=Scrybe Desktop application for Linux
Exec="${FULL_PATH}/scrybe-desktop"
Terminal=false
Type=Application
Icon=${FULL_PATH}/icon.png
EOS
chmod +x Scrybe.desktop
