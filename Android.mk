ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pecan)
  include $(call all-named-subdir-makefiles, recovery libcopybit libgralloc liblights librpc libomxcore libstagefrighthw libopencorehw)
endif 
