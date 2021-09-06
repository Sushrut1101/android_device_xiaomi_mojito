LOCAL_PATH := $(call my-dir)

# Gboard
include $(CLEAR_VARS)
LOCAL_MODULE := Gboard
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_OVERRIDES_PACKAGES := LatinIME LeanbackIME
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX :=  $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

# QuickPic Gallery
include $(CLEAR_VARS)
LOCAL_MODULE := QPGallery
LOCAL_MODULE_OWNER := wstprojects
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_OVERRIDES_PACKAGES := Gallery Gallery2 Gallery3D
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX :=  $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)

# Remove Prebuilt Packages
include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := /dev/null
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_OVERRIDES_PACKAGES := \
    AudioFX \
    Calendar \
    crDroidMusic \
    Etar \
    ExactCalculator \
    MatLog \
    Music \
    MusicFX
include $(BUILD_PREBUILT)

# Via
include $(CLEAR_VARS)
LOCAL_MODULE := Via
LOCAL_MODULE_OWNER := tu_yafeng
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk
LOCAL_OVERRIDES_PACKAGES := Jelly Browser Browser2
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX :=  $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
include $(BUILD_PREBUILT)
