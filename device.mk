#
# Copyright (C) 2021 The LineageOS Project
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

DEVICE_PATH := device/samsung/m14x

# Inherit from the common tree
$(call inherit-product, device/samsung/universal8535-common/common.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
    
# Load kernel firmwares
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/firmware/ft8720_m14x.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/ft8720_m14x.bin \
    $(DEVICE_PATH)/firmware/ft8720_m14x_ramtest.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/ft8720_m14x_ramtest.bin \
    $(DEVICE_PATH)/firmware/nt36672_m14x_csot.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/nt36672_m14x_csot.bin \
    $(DEVICE_PATH)/firmware/nt36672_m14x_csot_mp.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/nt36672_m14x_csot_mp.bin
    
# Copy kernel firmare to recovery
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/firmware/ft8720_m14x.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ft8720_m14x.bin \
    $(DEVICE_PATH)/firmware/ft8720_m14x_ramtest.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/ft8720_m14x_ramtest.bin \
    $(DEVICE_PATH)/firmware/nt36672_m14x_csot.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/nt36672_m14x_csot.bin \
    $(DEVICE_PATH)/firmware/nt36672_m14x_csot_mp.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/nt36672_m14x_csot_mp.bin
