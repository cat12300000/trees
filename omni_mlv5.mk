#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from mlv5 device
$(call inherit-product, device/LGE/mlv5/device.mk)

PRODUCT_DEVICE := mlv5
PRODUCT_NAME := omni_mlv5
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-M250
PRODUCT_MANUFACTURER := LGE

PRODUCT_GMS_CLIENTID_BASE := android-generic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="mlv5_global_com-user 8.1.0 O11019 182250859ccd6 release-keys"

BUILD_FINGERPRINT := lge/mlv5_global_com/mlv5:8.1.0/O11019/182250859ccd6:user/release-keys

