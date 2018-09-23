# MagicGApps
## Copyright (C) 2017-2018, VR25 @ xda-developers
### License: GPL v3+



---
#### DISCLAIMER

This software is provided as is, in the hope that it will be useful, but without any warranty. Always read/reread this reference prior to installing/upgrading. While no cats have been harmed, I assume no responsibility under anything which might go wrong due to the use/misuse of it.

A copy of the GNU General Public License, version 3 or newer ships with every build. Please, read it prior to using, modifying and/or sharing any part of this work.

To prevent fraud, DO NOT mirror any link associated with this project.



---
#### DESCRIPTION

- This module installs a regular open_gapps-* zip (except aroma variant) systemlessly. When it's disabled, Google Play Services are automatically disabled on the next boot as well. This prevents continuous, disturbing gms crashes.



---
#### PRE-REQUISITES

- Any open_gapps-* zip, except aroma variant
- Custom recovery
- Magisk



---
#### SETUP STEPS

0. Make sure an open_gapps-* zip (except aroma variant) exists somewhere in /sdcard or /external_sd directories or subdirectories (max directory depth must be 3 -- i.e., /sdcard/Download/OpenGApps).
1. Optional -- run `touch /data/r` to 
reinstall open_gapps-* zip (or `touch 
/data/u` to uninstall the module).
2. Optional -- set up a gapps-config.txt file (removal lists work as pseudo-removal lists -- systemless debloat).
3. Install from custom recovery (i.e., TWRP).



---
#### LINKS

- [Facebook Support Page](https://facebook.com/VR25-at-xda-developers-258150974794782)
- [Git Repository](https://github.com/Magisk-Modules-Repo/MagicGApps)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-systemless-beansgapps-mini-7-1-x-t3611362)
- [webview_packages: fix incorrect signatures]( https://github.com/LineageOS/android_vendor_cm/commit/a3a76f5d1cc233ad8024ffdc74bb3a786e1605c3)



---
#### LATEST CHANGES

**2018.9.23 (201809230)**
- Max OpenGApps search directory depth set to 3 for faster speed.
- Support for latest Magisk versions
- Updated documentation
- Use /dev/urandom over /dev/random.
- Use Magisk imgtool over make_ext4fs and resize2fs.

**2018.8.12 (201808120)**
- Added GMS Manager script -- automatically enables/disables Google Play Services when MagicGApps is enabled/disabled; self-remove when MagicGApps is uninstalled
- Updated module description

**2018.8.11 (201808110)**
- Fixed GApps runtime permission issues
- Fixed "make_ext4fs not found" (devices running Android P)
- Let Open GApps installer use the real /persist
- Major optimizations & cosmetic changes
- Removed `gp` executable
- Updated documentation
