# Assert
TARGET_OTA_ASSERT_DEVICE := kyleve,S7392,GT-S7392,hawaii

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_ARMV7A := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true

# For low memory targets only (~512MB RAM & hdpi resolution)
TARGET_ARCH_LOWMEM := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := hawaii
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := hawaii
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_BASE := 0x82000000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_kyleve_rev00_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/kyleve
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 907096000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2638217216
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 262144 #BOARD_KERNEL_PAGESIZE * 64

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := device/samsung/kyleve/recovery.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HDPI_RECOVERY := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# Philz
#TARGET_COMMON_NAME := GT-S7392
#BOOTLOADER_CMD_ARG := "download"
#BOARD_HAS_LOW_RESOLUTION := true
#BRIGHTNESS_SYS_FILE := "/sys/class/backlight/panel/brightness"
#BOARD_USE_B_SLOT_PROTOCOL := true

# TWRP Specific
#RECOVERY_GRAPHICS_USE_LINELENGTH := true
#DEVICE_RESOLUTION := 480x800
#BOARD_HAS_NO_REAL_SDCARD := true
#RECOVERY_SDCARD_ON_DATA := true
#TW_INTERNAL_STORAGE_PATH := /data/media
#TW_INTERNAL_STORAGE_MOUNT_POINT := sdcard
#TW_EXTERNAL_STORAGE_PATH := /external_sd
#TW_EXTERNAL_STORAGE_MOUNT_POINT := external_sd
#TW_NO_USB_STORAGE := true
#TW_DEFAULT_EXTERNAL_STORAGE := true
#TW_HAS_DOWNLOAD_MODE := true
#TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
#TW_MAX_BRIGHTNESS := 255
#TW_NO_CPU_TEMP := true
#TW_NO_REBOOT_BOOTLOADER := true
#TW_EXCLUDE_SUPERSU := true

# GPU
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/kyleve/egl/egl.cfg
BOARD_EGL_NEEDS_FNW := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_USES_ION := true
HWUI_COMPILE_FOR_PERF := true
USE_SPRD_HWCOMPOSER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# opengl
BOARD_USE_BGRA_8888 := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# healthd
BOARD_HAL_STATIC_LIBRARIES := libhealthd-kyleve.hawaii

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/ device/samsung/kyleve/cmhw/

# Camera
USE_CAMERA_STUB := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB  

# Audio
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/kyleve/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/kyleve/bluetooth/libbt_vndcfg_S7392.txt

# Connectivity - Wi-Fi
BOARD_HAVE_SAMSUNG_WIFI     := true
WPA_BUILD_SUPPLICANT 		:= true
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
BOARD_WLAN_DEVICE_REV       := bcm4330_b1
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/wifi/bcmdhd_apsta.bin"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME     := "dhd"
WIFI_DRIVER_MODULE_ARG      := "firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG   := "firmware_path=/system/etc/wifi/bcmdhd_apsta.bin nvram_path=/system/etc/wifi/nvram_net.txt"
WIFI_BAND                   := 802_11_ABG

# Wi-Fi Tethering
BOARD_HAVE_SAMSUNG_WIFI := true
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_NO_APSME_ATTR := true

# Bootanimation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# Font Footprint
SMALLER_FONT_FOOTPRINT := true
MINIMAL_FONT_FOOTPRINT := true

# Use the CM PowerHAL
TARGET_USES_CM_POWERHAL := true
CM_POWERHAL_EXTENSION := hawaii
TARGET_POWERHAL_VARIANT = cm

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# GPS
TARGET_SPECIFIC_HEADER_PATH := device/samsung/kyleve/include

# RIL
BOARD_RIL_CLASS := ../../../device/samsung/kyleve/ril/

# Compat
TARGET_USES_LOGD := false

# jemalloc causes a lot of random crash on free()
MALLOC_IMPL := dlmalloc

BOARD_SEPOLICY_DIRS += \
    device/samsung/kyleve/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    service_contexts \
    bkmgrd.te \
    device.te \
    surfaceflinger.te \
    bluetooth.te \
    geomagneticd.te \
    gpsd.te \
    init.te \
    immvibed.te \
    kernel.te \
    macloader.te \
    rild.te \
    shell.te \
    system_server.te \
    tvserver.te \
    vclmk.te
