$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lenovo/aio_otfp/device.mk)

# Release name
PRODUCT_RELEASE_NAME := aio_otfp

PRODUCT_DEVICE := aio_otfp
PRODUCT_NAME := full_aio_otfp
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo K3 Note
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 1920
TARGET_SCREEN_WIDTH       := 1080
TARGET_BOOTANIMATION_NAME := 1080

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US
