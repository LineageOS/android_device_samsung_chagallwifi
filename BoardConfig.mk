#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from common chagall-common
-include device/samsung/chagall-common/BoardConfigCommon.mk

LOCAL_PATH := device/samsung/chagallwifi

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_chagallwifi_defconfig

# Bootloader
TARGET_OTA_ASSERT_DEVICE := chagallwifi

# FIMG2D
BOARD_USES_FIMGAPI_V4L2 := false

# Graphics
OVERRIDE_RS_DRIVER := libRSDriverArm.so

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2527068160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12637437952
BOARD_FLASH_BLOCK_SIZE := 4096

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.universal5420
TARGET_USERIMAGES_USE_F2FS := true

# inherit from the proprietary version
-include vendor/samsung/chagallwifi/BoardConfigVendor.mk
