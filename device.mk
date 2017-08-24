LOCAL_PATH := device/lenovo/aio_otfp

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := aio_otfp

# MTK Helpers
PRODUCT_PACKAGES += \
    libgui_shim \
    libccci_util \
    libcam.halsensor \
    libwvmsym \
    libmtk_symbols \
    libstlport \
    EngineerMode

# Extra packages
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libemoji \
    libgralloc_extra \
    libnl_2 \
    fs_config_files

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml
    
# Audio policy & codec
# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/etc/audio_em.xml:system/etc/audio_em.xml \
	$(LOCAL_PATH)/configs/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/etc/audio_param/AudioParamOptions.xml:system/etc/audio_param/AudioParamOptions.xml

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/codecs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/codecs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
    $(LOCAL_PATH)/configs/codecs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
    $(LOCAL_PATH)/configs/codecs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/codecs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/codecs/media_codecs.xml:system/etc/permissions/media_codecs.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl \
    $(LOCAL_PATH)/configs/ACCDET.kl:system/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/fstab.mt6752:root/fstab.mt6752 \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.usb.rc:root/init.mt6752.usb.rc \
    $(LOCAL_PATH)/rootdir/init.mt6752.rc:root/init.mt6752.rc \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6752.rc:root/ueventd.mt6752.rc

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

# GPS
PRODUCT_PACKAGES += \
    gps.mt6752 \
    libcurl \
    YGPS

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/gps/slp_conf:system/etc/slp_conf \
    $(LOCAL_PATH)/configs/etc/gps/agps_profiles_conf2.xml:system/etc/agps_profiles_conf2.xml

# default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    camera.disable_zsl_mode=1 \
    persist.service.acm.enable=0 \
    persist.sys.usb.config=mtp,adb \
    ro.allow.mock.location=0 \
    ro.config.low_ram=false \
    ro.debuggable=1 \
    ro.dalvik.vm.native.bridge=0 \
    ro.mount.fs=EXT4

# build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.root_access=0

# extra_log
PRODUCT_PROPERTY_OVERRIDES += \
    persist.ril.log=0 \
    ro.disable.xlog=0

# Lights
PRODUCT_PACKAGES += \
    lights.mt6752
    
# Charger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.mount.fs=EXT4

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

PRODUCT_PACKAGES += \
    fs_config_files

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Common stuff
$(call inherit-product, vendor/adev/config/common.mk)

# Vendor
$(call inherit-product, vendor/lenovo/aio_otfp/aio_otfp-vendor.mk)
