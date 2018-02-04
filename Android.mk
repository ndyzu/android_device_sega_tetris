ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),tetris)
include $(call first-makefiles-under,$(call my-dir))
endif
