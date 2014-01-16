## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := P1C

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p1c/full_p1c.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p1c
PRODUCT_NAME := cm_p1c
PRODUCT_BRAND := samsung
PRODUCT_MODEL := Galaxy Tab 7
