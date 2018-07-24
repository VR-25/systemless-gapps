**2018.7.24-1 (201807241)**
- Fixed "Couldn't bind-mount /persist"

**2018.7.24 (201807240)**
- Fixed modPath detection issue (Magisk V16.6).
- Updated documentation

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

**v2017.11.7-1-Beta (201711071)**
- debloat.txt can be used anytime without the need to reinstall GApps. 
- Fixed "error 1" upon installation -- setting permissions.
- Search location "Magic_GApps*zip directory" -- OK

**v2017.11.7-Beta (201711070)**
- Additional SearchDIR: Magic GApps zip location
- debloat.txt (similar to gapps-config.txt) -- read Magic_GApps*.zip/common/debloat.txt for usage instructions.
- Fixed sysconfig patcher "no backup" error.
- gp command -- to grant/regrant full permissions to core GApps on demand (i.e., after resetting apps preferences).
- MagicGApps config folder migrated to /data/media to persist across factory resets.
- [TEST] service.sh will now try to grant permissions 3 times (3 boots) -- each process kicks in right after boot and takes ~2.5 minutes. That means, you have to wait for that time before setting up your ROM for the 1st time. If after waiting, Google Play Services still crashes, reboot and wait again.

**v2017.10.15-Beta (201710150)**
- Added Magisk's built-in busybox to PATH (installer, post-fs-data.sh & service.sh).
- General optimizations
- Bumped template version code to 1400 to avoid Magisk Manager blacklisting.
- Module config & log files moved to /data/MagicGApps for better organization.
- New version code format YYYYMMDDD. Magisk Manager won't recognize this as an update.
- Display a comprehensive error message when no compatible Open GApps zip is found, then exit.
- Redesigned sysconfig patcher & auto-re-patcher. Fixed GApps sysconfig files not being affected on auto-re-patching.

**v2017.10.2-Beta (201710200)**
- Auto-create magisk.img instead of aborting with "(!) Magisk is not installed" error message.
- Sysconfig patch is now optional (touch /data/_s)
- Added persistent config file (/data/_MagicGApps_config.txt) for patches & alternate Open GApps zip search dir.

**v2017.9.26-Beta (20179260)**
- Added "pm grant" script (another attempt to fixing FCs).
- Signature spoofing is now disabled by default.
- Minor optimizations
- Updated reference.

**v2017.9.22-Beta (20179220)**
- Added OpenGApps API filter.
- Enhanced architecture detection.
- Enhanced unsupported versions filtering.
- Updated debugging info.
- Cleanup & optimizations
- Fixed automatic sysconfig/* re-patching.

**v2017.9.21.1-Beta (20179211)**
- Added package architecture filtering for better user experience.
-- i.e., classic arm/arm64 package mis-selection won't happen again.

**v2017.9.21-Beta (20179210)**
- Massive cleanup & optimizations
- Signature spoofing patch to avoid GMS FCs in some ROMs.
- Ability to uninstall the module by running "touch /data/_u" before flashing MagicGApps zip."
- Updated reference (please, READ it).

**v2017.9.4-Beta**
- Striped down as much as possible for easier & faster debugging.
- gupdate tool & config file are not present in this version (currently being redesigned). Trust me, though -- you won't miss these anytime soon!
- Auto-patch, & re-patch "sysconfig/*" for data & battery savings enabled by default.
- Massive optimizations
- Better debugging support from within recovery itself.
- Updated reference.
- Installation is aborted if same or older OpenGApps zip version is the latest one found on the device (much better approach). Run "touch /data/_r" if you wish to force reinstall.
- The target search folders may now contain any other files besides "open_gapps-*.zip." There won't be "not found" nor "wrong file" errors anymore.
-- These are /data/media/0/Download, /data/media/0/Download/OpenGApps, /external_sd, /external_sd/.fbind/Download & /external_sd/.fbind/Download/OpenGApps. You can run "echo SearchDir=PATH > /data/_d" to set an alternate search directory.
- Pushed to Magisk modules repo (the obsolete version was finally replaced!).

**v2017.8.23-Beta**
- Major optimizations
- Major bug fixes
- Improved debugging tools
- Updated reference
- More options in the config.txt file
- Added options to see the README and changelog on terminal (gupdate -ref & -chlog)
- Not a change, but please... ALWAYS read the reference (README) before installing/updating. Not answering dumb questions anymore. 

**v2017.8.18-Beta**
- Fixed "gupdate -p"
- Fixed "OpenGApps package not found" 
- Fixed "sysconfig/*" patching upon installation
- Added options to specify "GAppsDir" (default is /data/media/0/Download/OpenGApps) and "auto_repatch_sysconfig" across updates (true or false)
- Check README for more info 

**v2017.8.17-Beta**
- Bug fixes and optimizations
- Added option to persistently and systemlessly patch "/system/etc/sysconfig/*" for data and battery savings across updates. Check README for more info. 

**v2017.8.16-Beta**
- Added options to systemlessly patch "/system/etc/sysconfig/*" for data & battery savings upon installation. Check README.
- Minor optimizations

**v2017.8.15-Beta**
- Fixed a couple of "gupdate" bugs. -p and -r options work as expected now.

**v2017.8.14-Beta**
- Complete redesign -- the installer finds a regular OpenGApps package, "turns it upside down" then installs it as a Magisk module.
- Extremely small package
- Includes "gupdate" utility (xbin) for easy GApps update. Check README.

**v2017.7.29**
- Under-the-hood optimizations
- Added Google App, Google TTS + off-line voice data
- Added Face Unlock and legacy LatinIME swype libs
- Updated documentation

**v2017.7.25**
- Updated to template v4
- Added default permissions

**v2017.6.22**
- Updated APKs/files

**v2017.6.12**
- Fixed Google Play Services FC that prevented Google account sign in
- Updated scripts

**v2017.6.4**
- Added more battery & data saving patches
- Bug fixes

**v2017.6.2**
- Reverted configuration files suspected to cause GMS random crashes
- Updated APKs

**v2017.6.1**
- Added ARM64 support

**v2017.5.31**
- Package striped down and optimized as much as possible (check main post for more info)

**v2017.5.26**
- Changed module name 
- Updated scripts 
- Optimized version number 
- Optimized zip file
- Improved compatibility 
- Replaced Pixel Launcher by Nova Launcher 
- Added source code to GitHub

**v2017.5.9**
- Initial release
