#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
# Lunaris Build Type: Default Full GMS
LUNARIS_BUILD_TYPE := UNOFFICIAL
# Enable Google Mobile Services
WITH_GMS := true

# Ship BCR
WITH_BCR := true

# Enable optimized dexopt tuning
TARGET_OPTIMIZED_DEXOPT := true

# Disable Google Photos
TARGET_USE_GPHOTOS := false

# Enable blur
TARGET_ENABLE_BLUR := true

# UDFPS (K50i has side-mounted fingerprint)
TARGET_CUSTOM_UDFPS := false

# SurfaceFlinger boosting
SURFACE_FLINGER_BOOST := true

# Disable Reality Engine (MTK device)
USE_REALITY_ENGINE := false

# Advanced display color
USE_ADVANCED_DISPLAY_COLOR := true

# Use AOSP telephony
WITH_GMS_COMMS_SUITE := false

# Drop Pixel Launcher
WITH_PIXEL_LAUNCHER := false

# Disable Google Maps
TARGET_USE_MAPS := false

# Disable Google Files
TARGET_USE_FILES := false

# ROM Flags
TARGET_DISABLE_EPPE := true
TARGET_DISABLE_MATLOG := true
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := xaga
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22041216G
PRODUCT_NAME := lineage_xaga
PRODUCT_SYSTEM_NAME := xaga_global

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/xaga_global/xaga:14/UP1A.231005.007/OS2.0.3.0.ULOMIXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
