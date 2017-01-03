#
# Copyright 2014 The Android Open-Source Project
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

# Product common configurations
# 64-bit support
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Call device specific makefile
$(call inherit-product, device/lenovo/aio_otfp/device.mk)

PRODUCT_NAME := full_aio_otfp
PRODUCT_DEVICE := aio_otfp
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := aio_otfp
PRODUCT_MANUFACTURER := lenovo

DEVICE_RESOLUTION := 1080x1920
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product, vendor/lenovo/aio_otfp/aio_otfp-vendor.mk)
