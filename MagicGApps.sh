#!/system/bin/sh
# MagicGApps GMS Manager
# Copyright (C) 2018, VR25 @ xda-developers
# License: GPL v3+


main() {

  set -u
  modID=MagicGApps
  modPath=/sbin/.core/img/$modID
   [ -f $modPath/module.prop ] || modPath=/magisk/$modID
  
  # self-destruct if $modID is not installed
  [ -f $modPath/module.prop ] || { rm $0; exit 0; }

  # wait for main system services to start
  until grep -q '/storage/emulated' /proc/mounts; do sleep 2; done
  
  # disable/enable gms as per MagicGApps status
  if [ -f $modPath/disable -o ! -f $modPath/auto_mount ]; then
    pm disable com.google.android.gms
  else
    pm enable com.google.android.gms
  fi 2>/dev/null

  exit 0
}

(main) &
