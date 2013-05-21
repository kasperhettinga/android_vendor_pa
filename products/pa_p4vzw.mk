# Copyright (C) 2012 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_p4vzw,$(TARGET_PRODUCT))

# Define PA overlay
OVERLAY_TARGET := pa_large-mdpi

# Define bootanimation choice
PARANOID_BOOTANIMATION_NAME := XHDPI

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/pa/config/pa_common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/p4vzw/p4vzw.mk)

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/pa/packages/p4vzw.mk

# CM Package Extras
-include vendor/pa/packages/cm.mk

# Override AOSP build properties
PRODUCT_NAME := pa_p4vzw
PRODUCT_DEVICE := p4vzw
PRODUCT_MODEL := p4vzw
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

endif
