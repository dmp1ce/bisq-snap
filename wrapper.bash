#!/bin/bash

# Not good, needed for fontconfig
export XDG_DATA_HOME=$SNAP/usr/share
# Font Config
export FONTCONFIG_PATH=$SNAP/etc/fonts/config.d
export FONTCONFIG_FILE=$SNAP/etc/fonts/fonts.conf
export HOME=$SNAP_USER_DATA

#export LIBGL_DRIVERS_PATH=$SNAP/usr/lib/x86_64-linux-gnu/dri
#export LIBVA_DRIVERS_PATH=$SNAP/usr/lib/x86_64-linux-gnu/dri
#export LIBGL_DEBUG=verbose

$SNAP/usr/lib/jvm/default-java/bin/java -Dsecurity.provider.11=org.bouncycastle.jce.provider.BouncyCastleProvider -jar $SNAP/gui/shaded.jar "$@"
