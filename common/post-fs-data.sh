#!/system/bin/sh

# Auto re-patch /system/etc/sysconfig/* across ROM/GApps updates

# Prepare Environment
export PATH=/dev/magisk/bin:$PATH
mga_dir=/data/MagicGApps
. $mga_dir/config.txt


if $sysconfig_patch; then
	MODPATH=${0%/*}
	syscfg=/dev/magisk/mirror/system/etc/sysconfig
	syscfgTMP=/data/_syscfg
	syscfgP=$MODPATH/system/etc/sysconfig
	syscfgBKP=$MODPATH/.syscfgBKP

	if [ "$(cat $MODPATH/.SystemSizeK)" -ne "$(du -s /dev/magisk/mirror/system | cut -f1)" ]; then
		exec & > $mga_dir/sysconfig_auto_repatch.log
		echo "$(date)"
		echo
		echo "<Auto-re-patch sysconfig>"
		[ -d "$syscfgTMP" ] && rm -rf $syscfgTMP
		mkdir $syscfgTMP
		rm -rf $syscfgP/*
		
		for file in $syscfg/* $syscfgBKP/*; do
			if [ -f "$file" ]; then
				grep -Eq '<allow-in-power-save|<allow-in-data-usage-save' "$file" \
					&& cp "$file" $syscfgTMP || cp "$file" $syscfgP
			fi
		done
		
		for file in $syscfgTMP/*; do
			[ -f "$file" ] && sed -i '/allow/s/<a/<!-- a/' "$file"
		done
		
		sed -i '/.volta/s/<!-- a/<a/' $syscfgTMP/google.xml
		cp $syscfgTMP/* $syscfgP
		rm -rf $syscfgTMP
		chmod -R 644 $syscfgP
		echo
		
		echo "$(du -s /dev/magisk/mirror/system | cut -f1)" > $MODPATH/.SystemSizeK
		
		echo "- Done"
	fi
fi
exit 0
