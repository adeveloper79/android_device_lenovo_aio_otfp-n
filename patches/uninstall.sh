echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av system/core system/sepolicy packages/apps/Settings"

for dir in $dirs ; do
	cd $rootdirectory
	echo "Reverting $dir patches..."
	repo sync $dir
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
