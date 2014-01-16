# Copyright (C) 2009 The Android Open Source Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/samsung/p1c/p1c.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Galaxy Tab uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Screen size is "large" 7'tablet, density is "hdpi"
PRODUCT_AAPT_CONFIG := large hdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_p1c
PRODUCT_DEVICE := p1c
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := Galaxy Tab 7

