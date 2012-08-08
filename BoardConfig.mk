USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/pecan/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := pecan

# USB mass storage
BOARD_CUSTOM_USB_CONTROLLER := ../../device/lge/pecan/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/vold/179:0
BOARD_SDEXT_DEVICE := /dev/block/vold/179:1
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH  := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"

# Browser
JS_ENGINE := v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true

# Audio
BOARD_PROVIDES_LIBAUDIO := true
BOARD_USES_GENERIC_AUDIO := false

# RIL
BOARD_PROVIDES_LIBRIL := true

# Graphics
BOARD_EGL_CFG := device/lge/pecan/prebuilt/lib/egl/egl.cfg
TARGET_SPECIFIC_HEADER_PATH := device/lge/pecan/include

# WiFI
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wl/rtecdc.bin nvram_path=/system/etc/wl/nvram.txt"
WIFI_DRIVER_MODULE_NAME := wireless
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_HAS_LGE_SOFTAP := true

# Recovery
BOARD_LDPI_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/pecan/recovery/graphics.c

# Sensors
TARGET_USES_OLD_LIBSENSORS_HAL := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# QCOM
BOARD_USES_QCOM_LIBS := true
BOARD_USES_LEGACY_QCOM := true
BOARD_USES_QCOM_LIBRPC := true

# KERNEL
BOARD_KERNEL_CMDLINE := mem=215M console=ttyMSM2,115200n8 androidboot.hardware=pecan
BOARD_KERNEL_BASE := 0x02808000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00440000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0bd80000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lge/pecan/kernel

# ICS Stuff 
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"lge.reboot"' -DCHARGERMODE_CMDLINE_VALUE='"pwroff"'

# Touch screen compatibility for ICS
BOARD_USE_LEGACY_TOUCHSCREEN := true

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
