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

# Rootdir files
PRODUCT_COPY_FILES := \
    device/samsung/p1c/fstab.p1c:root/fstab.p1c \
    device/samsung/p1c/init.p1c.rc:root/init.p1c.rc \
    device/samsung/p1c/ueventd.p1c.rc:root/ueventd.p1c.rc \
    device/samsung/p1c/twrp.init.rc:root/init.recovery.p1c.rc \
    device/samsung/p1c/init.p1c.usb.rc:root/init.p1c.usb.rc \
    device/samsung/p1c/init.p1c.usb.rc:recovery/root/usb.rc \
    device/samsung/p1c/twrp.fstab:root/etc/twrp.fstab

# bml_over_mtd
PRODUCT_COPY_FILES += \
    device/samsung/p1c/prebuilt/bml_over_mtd:utilities/bml_over_mtd

# CDMA stuff
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    device/samsung/p1c/prebuilt/etc/ppp/ip-up:system/etc/ppp/ip-up

PRODUCT_PROPERTY_OVERRIDES := \
       ro.telephony.default_network=4 \
       ro.ril.def.agps.mode=2 \
       ro.ril.samsung_cdma=true \
       net.cdma.datalinkinterface=/dev/ttyCDMA0 \
       net.cdma.ppp.interface=ppp0 \
       net.connectivity.type=CDMA1 \
       net.interfaces.defaultroute=cdma \
       mobiledata.interfaces=wlan0,ppp0

# Inherit p1-common and p1c-vendor device configuration.
$(call inherit-product, device/samsung/p1-common/device_base.mk)
$(call inherit-product-if-exists, vendor/samsung/p1c/p1c-vendor.mk)
