#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# Use the non-open-source parts, if they're present
-include vendor/samsung/p1c/BoardConfigVendor.mk

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/aries
TARGET_KERNEL_CONFIG := cyanogenmod_p1c_defconfig

# Asserts
TARGET_OTA_ASSERT_DEVICE := galaxytab7c,p1c,SCH-I800,SPH-P100,vzwtab

# TWRP
TW_INTERNAL_STORAGE_PATH        := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"

# boot.img
BOARD_BOOTIMAGE_PARTITION_SIZE := 7864320
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/p1c/shbootimg.mk

TARGET_RECOVERY_FSTAB := device/samsung/p1c/fstab.p1c

# Dummy values
# we don't need these img files, but default sizes are way too low
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2010529792
BOARD_USERDATAIMAGE_PARTITION_SIZE := 477626368

# BOARD_USES_HDMI := true
# TARGET_SEC_OMX_BIG_MMAP_BUFFER_SIZE := true
TARGET_USE_HWDECODING_TVOUT := true

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/s3c-usbgadget/gadget/lun%d/file"

# Import the p1-common BoardConfigCommon.mk
include device/samsung/p1-common/BoardConfigCommon.mk
