## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := kyleve

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/kyleve/full_kyleve.mk)

# Override build properties.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=kyleve \
    TARGET_DEVICE=kyleve \
    BUILD_FINGERPRINT="samsung/logan2gxx/logan2g:4.1.2/JZO54K/S7262XXUANJ1:user/release-keys" \
    PRIVATE_BUILD_DESC="logan2gxx-user 4.1.2 JZO54K S7262XXUANJ1 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_MODEL := GT-S7392	
PRODUCT_BRAND := samsung
PRODUCT_NAME := cm_kyleve
PRODUCT_DEVICE := kyleve
PRODUCT_MANUFACTURER := samsung
