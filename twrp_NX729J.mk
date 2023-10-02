#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/nubia/

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
