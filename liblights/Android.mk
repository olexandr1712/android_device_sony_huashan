ifeq ($(TARGET_PROVIDES_LIBLIGHT),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    lights.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware \
    liblog \
    libutils \
    libcutils

LOCAL_MODULE := lights.msm8960
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += -Wunused-variable

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
    external/tinyalsa/include

LOCAL_SRC_FILES := \
    lights_effects.cpp

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libtinyalsa

LOCAL_MODULE := lights_effects
LOCAL_PROPRIETARY_MODULE := true

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += -Wunused-variable

LOCAL_INIT_RC := lights_effects.rc

include $(BUILD_EXECUTABLE)

endif
