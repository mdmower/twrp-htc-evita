# Copyright (C) 2015 Matthew D. Mower
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2013 The Android Open Source Project
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

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/evita/BoardConfigVendor.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := evita
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# Kernel
BOARD_KERNEL_BASE := 0x80400000
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=qcom androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01700000
TARGET_KERNEL_CONFIG := elite_defconfig
TARGET_KERNEL_SOURCE := kernel/htc/msm8960

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Graphics
USE_OPENGL_RENDERER := true
TARGET_DISPLAY_USE_RETIRE_FENCE := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/htc/evita/configs/egl.cfg
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Power
TARGET_POWERHAL_VARIANT := qcom

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1744829440
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_BLDRMSG_OFFSET := 2048
TARGET_RECOVERY_DEVICE_MODULES := chargeled

# Vold
BOARD_VOLD_MAX_PARTITIONS := 37
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Charge mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/htc_lpm/lpm_mode

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/htc/evita/sepolicy

# TWRP
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_VARIANT := twrp
TW_BRIGHTNESS_AFTER_GR_INIT := true
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usb-otg"
TW_EXTERNAL_STORAGE_PATH := "/usb-otg"
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_TARGET_USES_QCOM_BSP := true
TW_THEME := portrait_hdpi
