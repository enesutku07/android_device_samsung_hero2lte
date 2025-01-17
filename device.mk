#
# Copyright (C) 2019 The LineageOS Project
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
#

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Fingerprint
PRODUCT_PACKAGES += \
    libbauthtzcommon_shim

# Wi-Fi
PRODUCT_PACKAGES += \
    WifiOverlay

# Inherit from common
$(call inherit-product, device/samsung/universal8890-common/device-common.mk)

# Inherit from the proprietary version
$(call inherit-product-if-exists, vendor/samsung/hero2lte/hero2lte-vendor.mk)
