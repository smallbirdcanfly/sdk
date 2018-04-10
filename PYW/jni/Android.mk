LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := PywSec
LOCAL_SRC_FILES := PywSec.cpp

LOCAL_LDLIBS := -landroid -llog

include $(BUILD_SHARED_LIBRARY)
