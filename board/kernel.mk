# Kernel informations
BOARD_KERNEL_BASE     := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

# Change 'BOARD_ENABLE_SERIAL_CONSOLE' to 'true' to enable serial console
BOARD_ENABLE_SERIAL_CONSOLE := false
ifeq ($(BOARD_ENABLE_SERIAL_CONSOLE), true)
    BOARD_KERNEL_CMDLINE += console=ttyHSL0,115200,n8
endif
BOARD_MKBOOTIMG_ARGS  := --ramdisk_offset 0x02000000

# Kernel properties
TARGET_KERNEL_SOURCE := kernel/sony/apq8064

# Custom boot
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := $(COMMON_PATH)/boot/custombootimg.mk
