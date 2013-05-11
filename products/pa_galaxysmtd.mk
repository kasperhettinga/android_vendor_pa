# Check for target product
ifeq (pa_galaxysmtd,$(TARGET_PRODUCT))

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI
 
# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# CM Package Extras
include vendor/pa/packages/cm.mk

$(call inherit-product, device/samsung/galaxysmtd/full_galaxysmtd.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_galaxysmtd
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I9000
PRODUCT_MANUFACTURER := samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9000 TARGET_DEVICE=GT-I9000 BUILD_FINGERPRINT=samsung/GT-I9000/GT-I9000:2.3.5/GINGERBREAD/XXJVT:user/release-keys PRIVATE_BUILD_DESC="GT-I9000-user 2.3.5 GINGERBREAD XXJVT release-keys"

endif
