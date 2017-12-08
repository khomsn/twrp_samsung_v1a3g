# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Necessary to mount a PC
$(call inherit-product, build/target/product/full.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.recovery.universal5420.rc:root/init.recovery.universal5420.rc

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Discard inherited values and use our own instead.
PRODUCT_NAME := omni_v1a3g
PRODUCT_DEVICE := v1a3g
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SM-P901
PRODUCT_MANUFACTURER := Samsung
