LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := ViPER4AndroidFX
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SHARED_LIBRARIES := libv4a_fx
LOCAL_SRC_FILES := ViPER4AndroidFX.apk
include $(BUILD_PREBUILT)


    ifneq (,$(filter $(TARGET_ARCH), x86 x86_64))
       V4A_TARGET := x86/libv4a_fx.so
    else
        V4A_TARGET := armeabi-v7a/libv4a_fx.so
    endif
include $(CLEAR_VARS)
LOCAL_MODULE := libv4a_fx
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/soundfx
LOCAL_SRC_FILES := $(V4A_TARGET)
include $(BUILD_PREBUILT)
