#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common ArcaneOS stuff.
$(call inherit-product, vendor/aosp/common.mk)
ARCANA_MAINTAINER := LaLeeroy
ARCANA_OFFICIAL := true
TARGET_SUPPORTS_BLUR := false
TARGET_BUILD_GRAPHENEOS_CAMERA := true
TARGET_SUPPORTS_NOW_PLAYING := true
TARGET_FACE_UNLOCK_SUPPORTED := true
USE_PIXEL_CHARGER_IMAGES := false
COPY_APN_SYSTEM := true


# Inherit from ulysse device
$(call inherit-product, device/xiaomi/ulysse/device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-aosp

TARGET_BOOT_ANIMATION_RES := 720

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ulysse
PRODUCT_NAME := aosp_ulysse
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5A / Y1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V11.0.2.0.NDKMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/ugg/ugg:7.1.2/N2G47H/V11.0.2.0.NDKMIXM:user/release-keys"
