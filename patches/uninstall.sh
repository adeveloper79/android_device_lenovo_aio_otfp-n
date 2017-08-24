echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/wpa_supplicant_8 bionic frameworks/av frameworks/native system/core system/netd packages/apps/Settings"

for dir in $dirs ; do
	cd $rootdirectory
	echo "Reverting $dir patches..."
	repo sync $dir
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
