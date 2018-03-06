# Magic GApps
## VR25 @ xda-developers



### DISCLAIMER
- Don't blame me if you end up triggering a nuclear disaster with this module! You do everything at your own risk.



### DESCRIPTION
- Installs a regular OpenGApps Package as a Magisk module (systemless GApps). However, this doesn't mean the module modifies `open_gapps-*.zip` files to be systemless compatible. Rather, it tweaks the recovery environment for systemless installation, extracts, patches & executes OpenGApps install scripts.



### INSTALLATION

* Before Actions
- `touch /data/r` -- reinstall OpenGApps
- `touch /data/u` -- uninstall module
- De-bloat your ROM and exclude Google apps from installation by adding patterns matching package folders (case insensitive) to debloat.txt -- there's a sample inside the zip. Place the file along with Magic_GApps*zip or open_gapps-*zip.

* The installer searches for the latest compatible `open_gapps-*.zip` file in /sdcard and /external_sd directories & subdirectories.

* Installable from recovery mode only



### ONLINE SUPPORT###
- [Git Repository](https://github.com/Magisk-Modules-Repo/MagicGApps)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-systemless-beansgapps-mini-7-1-x-t3611362)
- [webview_packages: fix incorrect signatures]( https://github.com/LineageOS/android_vendor_cm/commit/a3a76f5d1cc233ad8024ffdc74bb3a786e1605c3)



### RECENT CHANGES

**2018.3.6 (201803060)**
- Display richer info during (re-)installation
- Fixed FaceUnlock & VR support detection
- Improved compatibility with all major Magisk versions
- ROM de-bloater on steroids -- check out `debloat.txt` inside the zip
- Simplified as much as possible -- no more "extra features" for the sake of stability, reliability and ease of maintenance (if you're interested, my `sysconfig patcher` module now supports MagicGApps)
- Updated documentation

**2017.11.9 (201711090)**
- Set permissions after on-demand operations & don't remove $config_dir/.perms file before.
- [DEBUG] Replace webview with Chrome if *hrome*apk is present in Magic_GApps*zip directory (this might fix Google Play Services crashes).

**2017.11.8 (201711080)**
- cp new mod config_dir to /data/media instead of /data
- General cleanup
- Next upgrade stage begins (Aroma variant compatibility & more -- WIP)
