LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),aio_otfp)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
