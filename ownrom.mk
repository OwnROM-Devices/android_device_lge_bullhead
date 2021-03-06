# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common ownrom stuff.
$(call inherit-product, vendor/ownrom/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/ownrom/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ownrom_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5X
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MTC19T/2741993:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MTC19T 2741993 release-keys" \
    BUILD_ID=MTC19T
