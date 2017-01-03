LOCAL_PATH := $(call my-dir)
#ifneq ($(filter aio_otfp_m, $(TARGET_DEVICE)),)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	GraphicBufferExtra.cpp \
	GraphicBufferExtra_hal.cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include \
	$(LOCAL_PATH)/../include

LOCAL_SHARED_LIBRARIES := \
	libhardware \
	libcutils \
	libutils

LOCAL_EXPORT_C_INCLUDE_DIRS := \
	$(LOCAL_PATH)/include

LOCAL_MODULE := libgralloc_extra

include $(BUILD_SHARED_LIBRARY)
#endif
