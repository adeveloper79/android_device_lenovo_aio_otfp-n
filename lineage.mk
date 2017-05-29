# Release name
PRODUCT_RELEASE_NAME := Lenovo K3 Note

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit from AOSP 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit Lineage's custom product configuration
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_otfp/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_aio_otfp
PRODUCT_DEVICE := aio_otfp
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K3 Note
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false

#Magiak
ROOT_METHOD := magisk
