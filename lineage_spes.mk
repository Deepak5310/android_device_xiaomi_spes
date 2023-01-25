#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

PRODUCT_DEVICE := spes
PRODUCT_NAME := lineage_spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := spes
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 12 SKQ1.211103.001 V13.0.3.0.SGCINXM release-keys"

BUILD_FINGERPRINT := Redmi/spes/spes:12/SKQ1.211103.001/V13.0.3.0.SGCINXM:user/release-keys
