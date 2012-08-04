## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := pecan

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/pecan/device_pecan.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pecan
PRODUCT_NAME := cm_pecan
PRODUCT_BRAND := lge
PRODUCT_MODEL := pecan
PRODUCT_MANUFACTURER := lge
