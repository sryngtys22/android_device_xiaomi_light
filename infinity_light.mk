#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/light/device.mk)

# Inherit some common infinity-x stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
# Infinity-x build flags
INFINITY_BUILD_TYPE := UNOFFICIAL
INFINITY_MAINTAINER := Sryngtys

PRODUCT_NAME := infinity_light
PRODUCT_DEVICE := light
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 10 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="light_global-user 13 TP1A.220624.014 V14.0.6.0.TLSMIXM release-keys"

BUILD_FINGERPRINT := Redmi/light/light:13/TP1A.220624.014/V14.0.6.0.TLSMIXM:user/release-keys
