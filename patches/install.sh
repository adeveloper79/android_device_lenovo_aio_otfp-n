echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/av system/core system/sepolicy"

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
