#
# Copyright (C) The LineageOS Project
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

# Inherit the proprietary files
$(call inherit-product, vendor/samsung/a33x/a33x-vendor.mk)

# Inherit the common makefile from common tree
$(call inherit-product, device/samsung/s5e8825-common/common.mk)

DEVICE_PATH := device/samsung/a33x

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(DEVICE_PATH)/configs/audio/mixer_gains.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_gains.xml \
    $(DEVICE_PATH)/configs/audio/audio_board_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_board_info.xml

# Nfc
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2-service.samsung

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/nfc/libnfc-nci.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nci.conf \
    $(DEVICE_PATH)/configs/nfc/libnfc-sec-vendor.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-sec-vendor.conf
