#!/system/bin/sh
# Grant all necessary permissions to core GApps to prevent FCs

f=/data/media/MagicGApps/.perms
if [ ! -f ${f}_3 ]; then
	gp
	if [ -f $f ]; then mv $f ${f}_2
	elif [ -f ${f}_2 ]; then mv ${f}_2 ${f}_3
	else touch $f; fi
fi