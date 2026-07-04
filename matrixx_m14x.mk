#
# Copyright (C) 2026 The LineageOS Project & Project Matrixx
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Project Matrixx common configuration
$(call inherit-product, vendor/matrixx/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m14x/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := matrixx_m14x
PRODUCT_DEVICE := m14x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M146B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Project Matrixx Core Configurations
MATRIXX_MAINTAINER := MrPankaj24
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_MATLOG := true
WITH_BCR := true

# Google Services & UI Packages
WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
PRODUCT_NO_CAMERA := true

# Display Graphics & UI Performance Tuning (Optimized for 90Hz Panel)
$(call soong_config_set,surfaceflinger,frame_rate_category_high,90)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
SURFACE_FLINGER_BOOST := true
USE_REALITY_ENGINE := true

# Power & Thermal Management
BYPASS_CHARGE_SUPPORTED := true
