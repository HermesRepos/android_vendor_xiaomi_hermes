LOCAL_PATH := $(call my-dir)

ifneq ($(filter $(TARGET_DEVICE),hermes),)
ifdef COMPILE_MTK_PROPRIETARY
include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES_64 := proprietary/lib64/libion_mtk.so
LOCAL_SRC_FILES_32 := proprietary/lib/libion_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libnvram
LOCAL_SRC_FILES_64 := proprietary/lib64/libnvram.so
LOCAL_SRC_FILES_32 := proprietary/lib/libnvram.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librilmtk
LOCAL_SRC_FILES_64 := proprietary/lib64/librilmtk.so
LOCAL_SRC_FILES_32 := proprietary/lib/librilmtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := mtk-ril
LOCAL_SRC_FILES_64 := proprietary/lib64/mtk-ril.so
LOCAL_SRC_FILES_32 := proprietary/lib/mtk-ril.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
else
include $(CLEAR_VARS)
LOCAL_MODULE := rild
LOCAL_SRC_FILES := prebuilt/bin/hw/rild
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libbluetooth_mtk
LOCAL_SRC_FILES_64 := prebuilt/lib64/libbluetooth_mtk.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libbluetooth_mtk.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libbt-vendor
LOCAL_SRC_FILES_64 := prebuilt/lib64/libbt-vendor.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libbt-vendor.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgralloc_extra
LOCAL_SRC_FILES_64 := prebuilt/lib64/libgralloc_extra.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libgralloc_extra.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libgui_ext
LOCAL_SRC_FILES_64 := prebuilt/lib64/libgui_ext.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libgui_ext.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril
LOCAL_SRC_FILES_64 := prebuilt/lib64/libril.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libril.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libui_ext
LOCAL_SRC_FILES_64 := prebuilt/lib64/libui_ext.so
LOCAL_SRC_FILES_32 := prebuilt/lib/libui_ext.so
LOCAL_MULTILIB := both
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)
endif
endif
