echo
MODID=MagicGApps
PROJECTPATH=/mnt/d/Documents/GitHub
cd $PROJECTPATH/$MODID
[ -d .builds ] || mkdir .builds
C_LOG=changelog.txt
MODVER=$(sed -n 1p $C_LOG | cut -d' ' -f2)
versionCode=$(sed -n 1p $C_LOG | cut -d'(' -f2 | sed 's/)//')

sed -i /version/d module.prop
sed -i "3i version=$MODVER" module.prop
sed -i "4i versionCode=$versionCode" module.prop

zip -r9uTll .builds/$MODID-$MODVER.zip * -x *.zip zip.sh
echo
echo Done.
exit 0