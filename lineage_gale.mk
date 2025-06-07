#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/gale/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_gale
PRODUCT_DEVICE := gale
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23106RN0DA

# Build Stuffs
HORIZON_BUILD_TYPE := OFFICIAL
HORIZON_MAINTAINER := superxorn

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps flags
WITH_GMS := true
WITH_GMS_VARIANT := core

# SomeStuffs
TARGET_INCLUDE_ACCORD := false
TARGET_PREBUILT_BCR := false
PRODUCT_NO_CAMERA := false
TARGET_INCLUDE_MATLOG := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="vnd_gale-user 12 SP1A.210812.016 V816.0.5.0.UGPMIXM release-keys"
    BuildFingerprint=alps/vnd_gale/gale:12/SP1A.210812.016/V816.0.5.0.UGPMIXM:user/release-keys
