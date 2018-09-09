LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE := DuckDuckGo

LOCAL_CERTIFICATE := platform

LOCAL_PRIVILEGED_MODULE := true

LOCAL_OVERRIDES_PACKAGES := Jelly

LOCAL_MODULE_CLASS := APPS

LOCAL_SRC_FILES := duckduckgo-5.9.1-release-unsigned.apk

include $(BUILD_PREBUILT)
