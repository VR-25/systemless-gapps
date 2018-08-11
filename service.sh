#!/system/bin/sh
# MagicGApps etc Keeper (what an odd name! I know...)
# Copyright (C) 2018, VR25 @ xda-developers
# License: GPL v3+


main() {

  set -u
  umask 022

  modPath=${0%/*}
  etcPath=$modPath/system/etc
  etcPath2=/data/adb/magisk_simple/system/etc
  etchPath3=/cache/magisk_mount/system/etc

  [ -d "$etcPath2" ] || mkdir -p $etcPath2
  [ -d "$etcPath3" ] || { mount -o remount,rw /cache && mkdir -p $etcPath3; } 2>/dev/null

  [ -f $etcPath2/g.prop ] || cp -af $etcPath/* $etcPath2/
  [ -d "$etcPath3" -a ! -f $etcPath3/g.prop ] && cp -af $etcPath/* $etcPath3/
  exit 0
}

(main) &
