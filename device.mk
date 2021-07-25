#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit virtual_ab_ota product
$(call inherit-product, \
    $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# A/B
PRODUCT_PACKAGES += \
    android.hardware.boot@1.1-impl-qti \
    android.hardware.boot@1.1-impl-qti.recovery \
    android.hardware.boot@1.1-service

PRODUCT_PACKAGES_DEBUG += \
    bootctl

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
  update_engine \
  update_engine_sideload \
  update_verifier

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# API level, the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 30

# Audio
TARGET_ENABLE_AUDIO_ULL := true

# Audio Configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Cutout Ring
PRODUCT_PACKAGES += \
    CutoutRingServiceSweet

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Prebuilt DTB
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# Proprietary software
# choose either microg (or) gapps, but not both
#$(call inherit-product, vendor/microg/config.mk)
#WITH_AURORA := true
#WITH_BACKENDS := true
#$(call inherit-product, vendor/gapps/basic/config.mk)
PRODUCT_PACKAGES += \
    Gboard \
    QPGallery \
    Recorder \
    RemovePackages \
    Snap \
    Via

# Sensor
TARGET_ENABLE_MULTI_SENSOR := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from sm6150-common
$(call inherit-product, device/xiaomi/sm6150-common/sm6150.mk)
=======
# Power
PRODUCT_PACKAGES += \
    android.hardware.power-service.sweet-libperfmgr

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/power-libperfmgr/powerhint.json:$(TARGET_COPY_OUT_VENDOR)/etc/powerhint.json

# WiFi Display
PRODUCT_PACKAGES += \
    libavservices_minijail \
    libdisplayconfig.qti \
    libminijail \
    libnl \
    libqdMetaData \
    libwfdaac_vendor \
    vendor.display.config@2.0

PRODUCT_BOOT_JARS += \
    WfdCommon

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service_64 \
    camera.device@3.6-external-impl \
    camera.device@3.5-impl

PRODUCT_PACKAGES += \
    libshim_megvii

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@2.4-impl \
    android.hardware.graphics.composer@2.4-service \
    android.hardware.graphics.composer@2.2-resources.vendor \
    android.hardware.graphics.mapper@3.0-impl-qti-display \
    android.hardware.graphics.mapper@4.0-impl-qti-display \
    vendor.qti.hardware.display.allocator-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.sm6150 \
    gralloc.default \
    hwcomposer.sm6150 \
    memtrack.sm6150 \
    vendor.qti.hardware.display.mapper@1.0.vendor \
    vendor.qti.hardware.display.mapper@1.1.vendor \
    vendor.qti.hardware.display.mapper@2.0.vendor \
    vendor.qti.hardware.display.composer@1.0.vendor \
    vendor.qti.hardware.display.composer@2.0.vendor \
    vendor.qti.hardware.display.allocator@1.0.vendor \
    vendor.qti.hardware.display.mapperextensions@1.1.vendor

# Media
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libc2dcolorconvert \
    libOmxSwVdec \
    libOmxSwVencMpeg4 \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw

PRODUCT_PACKAGES += \
    libcodec2_vndk.vendor \
    libcodec2_hidl@1.0.vendor

PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.3-service.clearkey \
    libclearkeycasplugin \
    libdrmclearkeyplugin

# TouchFeature
PRODUCT_PACKAGES += \
    vendor.xiaomi.hardware.touchfeature@1.0.vendor

# Perf
PRODUCT_PACKAGES += \
    vendor.qti.hardware.perf@2.2.vendor

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    libwifi-hal-qcom \
    libwpa_client \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    vendor.qti.hardware.wifi.hostapd@1.0.vendor \
    vendor.qti.hardware.wifi.hostapd@1.1.vendor \
    vendor.qti.hardware.wifi.hostapd@1.2.vendor \
    vendor.qti.hardware.wifi.supplicant@2.0.vendor \
    vendor.qti.hardware.wifi.supplicant@2.1.vendor \
    vendor.qti.hardware.wifi.supplicant@2.2.vendor

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@2.0-service.qti

# Infrared
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-service \
    android.hardware.ir@1.0-impl

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-service \
    android.hardware.sensors@1.0-impl

# Mobile data
PRODUCT_PACKAGES += \
    librmnetctl

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service \
    android.hardware.health@2.1-impl

# ContextHub
PRODUCT_PACKAGES += \
    android.hardware.contexthub@1.0-service \
    android.hardware.contexthub@1.0-impl

# CAS
PRODUCT_PACKAGES += \
    android.hardware.cas@1.2-service

# ServiceTracker
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2.vendor

# Vendor service manager
PRODUCT_PACKAGES += \
    vndservicemanager

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/mojito/mojito-vendor.mk)
