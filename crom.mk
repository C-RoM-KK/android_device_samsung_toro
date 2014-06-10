# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/samsung/toro/full_toro.mk)

# bootanimation
PRODUCT_COPY_FILES += \
    vendor/crom/prebuilt/common/media/xhdpi/BOOTANIMATION-1280x768.zip:system/media/bootanimation.zip

# Inherit CRoM common stuff.
$(call inherit-product, vendor/crom/config/common_phone.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Release name
PRODUCT_RELEASE_NAME := toro

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/125147:user/release-keys"
PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 125147 release-keys"

PRODUCT_NAME := crom_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
