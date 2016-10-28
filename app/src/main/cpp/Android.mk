LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

OPENCV_CAMERA_MODULES := on
OPENCV_INSTALL_MODULES := on
include $(OPENCV_ANDROID_SDK)/sdk/native/jni/OpenCV.mk

LOCAL_MODULE := native-lib
LOCAL_SRC_FILES := native-lib.cpp
LOCAL_LDLIBS := -llog -ldl
LOCAL_CPPFLAGS := -std=gnu++11 -frtti -fexceptions

include $(BUILD_SHARED_LIBRARY)
