# Magic GApps
# VR25 @ XDA Developers


***
**Disclaimer**
- Don't blame me if you end up triggering a nuclear disaster with this module! You do everything at your own risk.


***
**Description**
- Installs a regular OpenGApps Package as a Magisk module (systemless GApps). This doesn't mean the module modifies `open_gapps-*.zip` files to be systemless compatible. Rather, it tweaks the recovery environment for systemless installation, extracts, patches & runs the OpenGApps install scripts, then magic happens. Just for extra clarification, `open_gapps-*.zip` files aren't modified in any way, shape or form.
- Auto-patch, & re-patch sysconfig/* for data & battery savings enabled by default.
- Installation is aborted if same or older OpenGApps zip version is the latest one found on the device. Run `touch /data/_r` if you wish to override that (force reinstall).


**Installation**

* Before Actions
- Running `touch /data/_r` tells the installer to reinstall OpenGApps.
- `touch /data/_u` -- uninstall.`

* Install just like any other regular flashable zip

* The installer looks for the latest "open_gapps-*.zip" file in the following directories:
`- /sdcard
- /sdcard/Download
- /sdcard/Download/OpenGApps
- /external_sd
- /external_sd/Download
- /external_sd/Download/OpenGApps
- /external_sd/.fbind/Download
- /external_sd/.fbind/Download/OpenGApps`

* You can set an alternate search path by running `echo PATH > /data/_d` -- i.e., `echo /sdcard/ADM > /data/_d`.


***
**Notes/tips**
- Due to the nature of this module, BOOTMODE installation is currently not supported, nor easily adaptable. Installation will fail with exit code 1 in BOOTMODE. Install from `RECOVERYMODE only`.
- Magic GApps was built on top of an heavily modified template v3 due to the above condition and major issues with newer templates. This should not interfere with installation, though.
- Signature spoofing patching is available, but disabled by default. If you want it, enable by running `touch /data/_s`. This must be reapplied across ROM updates -- simply re-flash the module to do that (don't worry, it won't re-install GApps).


***
**Online Support**
- [XDA Thread](https://forum.xda-developers.com/apps/magisk/module-systemless-beansgapps-mini-7-1-x-t3611362)
- [GitHub Repo](https://github.com/Magisk-Modules-Repo/MagicGApps)
