LOCAL_PATH := device/lenovo/aio_otfp

# Lenovo Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/permissions/com.lenovo.hardware.piezo_speaker.xml:system/etc/permissions/com.lenovo.hardware.piezo_speaker.xml \
    $(LOCAL_PATH)/configs/etc/permissions/com.lenovo.keyguard.device.xml:system/etc/permissions/com.lenovo.keyguard.device.xml \
	$(LOCAL_PATH)/configs/etc/permissions/com.lenovo.keyguard.xml:system/etc/permissions/com.lenovo.keyguard.xml \
	$(LOCAL_PATH)/configs/etc/permissions/com.lenovo.software.wifi_password_share.xml:system/etc/permissions/com.lenovo.software.wifi_password_share.xml 