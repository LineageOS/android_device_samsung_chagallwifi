#
# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from chagall-common
$(call inherit-product, device/samsung/chagall-common/chagall-common.mk)

LOCAL_PATH := device/samsung/chagallwifi

DEVICE_PACKAGE_OVERLAYS += device/samsung/chagallwifi/overlay

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.universal5420.rc \
    ueventd.universal5420.rc

# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/chagallwifi/chagallwifi-vendor.mk)
