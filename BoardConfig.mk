USE_CAMERA_STUB := false
BOARD_USES_TI_CAMERA_HAL := true

# inherit from the proprietary version
-include vendor/sega/tetris/BoardConfigVendor.mk

#TARGET_SPECIFIC_HEADER_PATH := device/sega/tetris/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := omap4
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_BOOTLOADER_BOARD_NAME := tetris
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
NEEDS_ARM_ERRATA_754319_754320 := true
BOARD_GLOBAL_CFLAGS += -DNEEDS_ARM_ERRATA_754319_754320

BOARD_USES_UBOOT_MULTIIMAGE := true
BOARD_UBOOT_ENTRY := 0x80008000
BOARD_UBOOT_LOAD := 0x80008000

TARGET_PREBUILT_KERNEL := device/sega/tetris/kernel

## Ignore --wipe_data sent by the bootloader
BOARD_RECOVERY_ALWAYS_WIPES := true
BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_HAVE_BLUETOOTH := true

BOARD_HAS_NO_MISC_PARTITION := true

TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"

TARGET_BOOTLOADER_BOARD_NAME := tetris

BOARD_USES_ALSA_AUDIO := true
BOARD_USES_ALSA_UTILS := true
BOARD_USES_TI_OMAP_MODEM_AUDIO := true

BOARD_EGL_CFG := device/sega/tetris/egl.cfg

BOARD_VOLD_MAX_PARTITIONS := 16
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USES_GL_VENDOR_EXTENSIONS := false

BOARD_WPA_SUPPLICANT_DRIVER := CUSTOM
BOARD_WLAN_DEVICE           := wl1283
BOARD_SOFTAP_DEVICE         := wl1283
WPA_SUPPLICANT_VERSION      := VER_0_6_X
HOSTAPD_VERSION             := VER_0_6_X
WIFI_DRIVER_MODULE_PATH     := "/system/etc/wifi/tiwlan_drv.ko"
WIFI_DRIVER_MODULE_NAME     := "tiwlan_drv"
WIFI_FIRMWARE_LOADER        := "wlan_loader"

OMAP_ENHANCEMENT := true

ifdef OMAP_ENHANCEMENT
COMMON_GLOBAL_CFLAGS += -DOMAP_ENHANCEMENT -DTARGET_OMAP4 
endif

BOARD_USES_TI_CAMERA_HAL := true
HARDWARE_OMX := true
#FW3A := true
#ICAP := true
#IMAGE_PROCESSING_PIPELINE := true
ifdef HARDWARE_OMX
OMX_VENDOR := ti
OMX_VENDOR_WRAPPER := TI_OMX_Wrapper
BOARD_OPENCORE_LIBRARIES := libOMX_Core
BOARD_OPENCORE_FLAGS := -DHARDWARE_OMX=1
endif

#BOARD_NEEDS_CUTILS_LOG := true

BUILD_FM_RADIO := true
FM_CHR_DEV_ST := true
BUILD_TI_FM_APPS := true

# Enable surfaceflinger bypass (still not ready)
#COMMON_GLOBAL_CFLAGS += -DUSE_COMPOSITION_BYPASS

BOARD_NEEDS_CUTILS_LOG := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1056858112
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 619249664
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_GLOBAL_CFLAGS += -DCHARGERMODE_CMDLINE_NAME='"chg"' -DCHARGERMODE_CMDLINE_VALUE='"4"'
