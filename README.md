# Magic GApps
# VR25 @ XDA Developers


***
**Disclaimer**
- Don't blame me if you end up triggering a nuclear disaster with this module! You do everything at your own risk.


***
**Description**
- Installs a regular OpenGApps Package as a Magisk module (systemless GApps). This doesn't mean the module modifies `open_gapps-*.zip` files to be systemless compatible. Rather, it tweaks the recovery environment for systemless installation, extracts, patches & runs the OpenGApps install scripts, then magic happens. Just for extra clarification, `open_gapps-*.zip` files aren't modified in any way, shape or form.
- Auto-patch, & re-patch sysconfig/* for data & battery savings (`touch /data/_s`).
- Installation is aborted if same or older OpenGApps zip version is the latest one found on the device. Run `touch /data/_r` if you wish to override that (force reinstall).


**Installation**

* Before Actions
- Running `touch /data/_r` tells the installer to reinstall OpenGApps.
- `touch /data/_u` -- uninstall.`
- disable_list.txt (similar to gapps-config.txt) -- read Magic_GApps*.zip/common/disable_list.txt for usage instructions.

* Install just like any other regular flashable zip

* The installer looks for the latest "open_gapps-*.zip" file in the following locations:
- /sdcard
- /sdcard/Download
- /sdcard/Download/OpenGApps
- /external_sd
- /external_sd/Download
- /external_sd/Download/OpenGApps
- /external_sd/.fbind/Download
- /external_sd/.fbind/Download/OpenGApps
- Magic GApps zip directory

* You can set an alternate search path by running `echo PATH > /data/_d` -- i.e., `echo /sdcard/ADM > /data/_d`.


***
**Notes/tips**
- Due to the nature of this module, `boot mode` installation is currently not supported, nor easily adaptable.
- Signature spoofing patching is available, but disabled by default. If you want it, enable by running `touch /data/_ss`. This must be reapplied across ROM updates -- simply re-flash the module to do that (don't worry, it won't re-install GApps).
- There's a config file to preserve user settings -- /data/media/MagicGApps/config.txt.
- Debloat your ROM with disable_list.txt (mentioned earlier).


***
**Online Support**
- [Git Repository](https://github.com/Magisk-Modules-Repo/MagicGApps)
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-systemless-beansgapps-mini-7-1-x-t3611362)