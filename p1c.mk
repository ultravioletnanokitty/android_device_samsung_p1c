# Copyright (C) 2010 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.
DEVICE_PACKAGE_OVERLAYS := device/samsung/p1c/overlay

# Init files
PRODUCT_COPY_FILES := \
    device/samsung/p1c/fstab.p1c:root/fstab.p1c \
    device/samsung/p1c/init.p1c.rc:root/init.p1c.rc \
    device/samsung/p1c/ueventd.p1c.rc:root/ueventd.p1c.rc \
    device/samsung/p1-common/init.recovery.rc:root/init.recovery.p1c.rc \
    device/samsung/p1c/init.p1c.usb.rc:root/init.p1c.usb.rc \
    device/samsung/p1c/init.p1c.usb.rc:recovery/root/usb.rc

# vold
PRODUCT_COPY_FILES += \
    device/samsung/p1c/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# RIL
PRODUCT_COPY_FILES += \
    device/samsung/p1c/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Inherit p1-common and p1c-vendor device configuration.
$(call inherit-product, device/samsung/p1-common/device_base.mk)
$(call inherit-product-if-exists, vendor/samsung/p1c/p1c-vendor.mk)
