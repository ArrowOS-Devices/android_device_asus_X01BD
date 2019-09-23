#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# Inherit some common arrow stuff
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from X01BD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_X01BD
PRODUCT_DEVICE := X01BD
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_X01BD
PRODUCT_MANUFACTURER := asus
TARGET_VENDOR := asus

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_X01BD \
    PRODUCT_NAME=WW_X01BD \
    PRIVATE_BUILD_DESC="WW_Phone-user 9 PKQ1.16.2017.1905.065-20190507 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "asus/WW_X01BD/ASUS_X01BD_1:9/PKQ1/16.2017.1905.065-20190507:user/release-keys"
