#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ingres device
$(call inherit-product, device/xiaomi/ingres/device.mk)

PRODUCT_DEVICE := ingres
PRODUCT_NAME := lineage_ingres
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 21121210C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ingres-user 13 SKQ1.220303.001 V14.0.11.0.TLJCNXM release-keys"

BUILD_FINGERPRINT := Redmi/ingres/ingres:13/SKQ1.220303.001/V14.0.11.0.TLJCNXM:user/release-keys
