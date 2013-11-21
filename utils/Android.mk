LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
include external/ffmpeg/android/ffmpeg.mk

LOCAL_SRC_FILES := \
	ffmpeg_source.cpp \
	ffmpeg_utils.cpp \
	ffmpeg_cmdutils.c \
        codec_utils.cpp

LOCAL_C_INCLUDES += \
	$(TOP)/frameworks/native/include/media/openmax \
	$(TOP)/frameworks/av/include \
	$(TOP)/frameworks/av/media/libstagefright

LOCAL_SHARED_LIBRARIES := \
	libavcodec \
	libavformat \
	libavutil \
	libpostproc \
	libswscale \
	libutils \
	libcutils \
	libstagefright \
	libstagefright_foundation

LOCAL_MODULE := libffmpeg_utils

LOCAL_MODULE_TAGS := optional

LOCAL_CFLAGS += -D__STDC_CONSTANT_MACROS=1

include $(BUILD_SHARED_LIBRARY)
