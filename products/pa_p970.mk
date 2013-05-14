# Check for target product
ifeq (pa_p970,$(TARGET_PRODUCT))

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

# Inherit device configuration
$(call inherit-product, device/lge/p970/full_p970.mk)

# Override AOSP build properties
PRODUCT_NAME := pa_p970
PRODUCT_DEVICE := p970
PRODUCT_MODEL := LG-P970
PRODUCT_MANUFACTURER := LGE
PRODUCT_BRAND := LGE
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=p970 TARGET_DEVICE=p970 BUILD_FINGERPRINT=Android/cm_p970/p970:4.2.2/JDQ39E/eng.kasper.20130511.172241:userdebug/test-keys PRIVATE_BUILD_DESC="cm_p970-userdebug 4.2.2 JDQ39E eng.kasper.20130511.172241 test-keys"

endif
