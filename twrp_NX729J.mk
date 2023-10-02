#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nubia/NX729J

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device.mk configuration
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Release name
PRODUCT_RELEASE_NAME := NX729J

## Device identifier
PRODUCT_DEVICE := NX729J
PRODUCT_NAME := twrp_NX729J
PRODUCT_BRAND := Nubia
PRODUCT_MODEL := RedMagic 8 Pro
PRODUCT_MANUFACTURER := Nubia

# Assert
TARGET_OTA_ASSERT_DEVICE := NX729J

# Theme
TW_STATUS_ICONS_ALIGN := center

PRODUCT_GMS_CLIENTID_BASE := android-nubia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NX729J-UN-user 13 TKQ1.221013.002 eng.nubia.20230701.182215 release-keys"

BUILD_FINGERPRINT := nubia/NX729J-UN/NX729J-UN:13/TKQ1.221013.002/eng.nubia.20230701.182215:user/release-keys
