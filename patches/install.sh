echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="external/wpa_supplicant_8 bionic frameworks/av frameworks/native system/core system/netd packages/apps/Settings"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/lenovo/aio_otfp/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
