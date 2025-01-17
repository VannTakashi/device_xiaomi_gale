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
$(call inherit-product, vendor/tenx/config/common_full_phone.mk)

PRODUCT_NAME := tenx_gale
PRODUCT_DEVICE := gale
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 23106RN0DA

# UDFPS support 
TARGET_HAS_UDFPS := false

# Blur
TARGET_ENABLE_BLUR := true

# Bootanimation 
TARGET_BOOT_ANIMATION_RES := 720

# BCR (Call recording)
TARGET_PREBUILT_BCR := false

# build Lawnchair with QUICK switch (Pixel launcher by default)
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# Custom package installer
TARGET_USE_CUSTOM_PACKAGE_INSTALLER := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_gale-user 12 SP1A.210812.016 V816.0.2.0.UGPMIXM release-keys"

BUILD_FINGERPRINT := alps/vnd_gale/gale:12/SP1A.210812.016/V816.0.2.0.UGPMIXM:user/release-keys
