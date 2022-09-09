#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Evolution X stuff
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := false
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Elixir Official Stuff
ELIXIR_BUILD_TYPE := OFFICIAL
ELIXIR_MAINTAINER := Dhruvesh

# Inherit from RMX1921 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1921
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := aosp_RMX1921
PRODUCT_MODEL := Realme XT

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX1921-user 11 RKQ1.201217.002 1626947099367 release-keys" \
    PRODUCT_NAME="RMX1921"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX1921/RMX1921:11/RKQ1.201217.002/1626947099367:user/release-keys
