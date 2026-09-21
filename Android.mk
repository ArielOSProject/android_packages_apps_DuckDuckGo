LOCAL_PATH := $(call my-dir)

# Note: We are using Android.mk instead of Android.bp to maintain compatibility across a single branch.
# LineageOS 22 (Soong) requires "preprocessed: true" for presigned APKs with targetSdkVersion >= 30,
# but LineageOS 20 does not recognize this property in Android.bp and throws a parsing error.
# Using BUILD_PREBUILT in the Make system successfully handles this APK on both OS versions.

include $(CLEAR_VARS)
LOCAL_MODULE := DuckDuckGo
LOCAL_SRC_FILES := duckduckgo-5.295.1-play-release.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_DEX_PREOPT := false
LOCAL_SYSTEM_EXT_MODULE := true
LOCAL_OVERRIDES_PACKAGES := Jelly Browser2

# Align with app manifest
ifneq ($(call math_gt_or_eq, $(PLATFORM_SDK_VERSION), 31),)
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
endif

include $(BUILD_PREBUILT)