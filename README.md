# Magic GApps
## (c) 2018, VR25 @ xda-developers
### License: GPL v3+



#### DISCLAIMER

- This software is provided as is, in the hope that it will be useful, but without any warranty. Always read the reference prior to installing/updating. While no cats have been harmed, I assume no responsibility under anything that might go wrong due to the use/misuse of it.
- A copy of the GNU General Public License, version 3 or newer ships with every build. Please, read it prior to using, modifying and/or sharing any part of this work.
- To prevent fraud, DO NOT mirror any link associated with the project.



#### DESCRIPTION

- Installs a regular open_gapps-* zip systemlessly. However, this doesn't mean the target archive is modified to be systemless-compatible. Rather, the recovery environment and OpenGApps install scripts are temporarily patched to allow the desired end result.



#### PRE-REQUISITES

- Any open_gapps-* zip, except aroma variant
- Custom recovery
- Magisk



#### SETUP STEPS

0. Make sure an open_gapps-* zip (except aroma variant) exists somewhere in /sdcard or /external_sd directories or subdirectories.
1. Optional -- run `touch /data/r` to reinstall open_gapps-* zip or `touch /data/u` to uninstall the module.
2. Optional -- set up a gapps-config.txt file (removal lists work as pseudo-removal lists)
3. Install from custom recovery (i.e., TWRP).
4. Optional -- the debloat.txt file can be updated and used anytime after installation as well. Thus, flashing the module again will only apply the new changes, as opposed to reinstalling everything.



#### ONLINE SUPPORT

- [Git Repository](https://github.com/Magisk-Modules-Repo/MagicGApps)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-systemless-beansgapps-mini-7-1-x-t3611362)
- [webview_packages: fix incorrect signatures]( https://github.com/LineageOS/android_vendor_cm/commit/a3a76f5d1cc233ad8024ffdc74bb3a786e1605c3)



#### RECENT CHANGES

**2018.8.1 (201808010)**
- App permissions auto-reset issue possibly fixed
- Full `gapps-config.txt` support (removal lists work as pseudo-removal lists)
- Ground-up optimizations
- New attempt to eradicate GMS FC's
- Set `vrmode_compat=true` & `faceunlock_compat=true`
- Striped down (removed unnecessary code & files)
- Updated documentation

**2018.7.24-1 (201807241)**
- Fixed "Couldn't bind-mount /persist"

**2018.7.24 (201807240)**
- Fixed modPath detection issue (Magisk V16.6).
- Updated documentation
