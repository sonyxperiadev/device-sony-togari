# Copyright 2014 The Android Open Source Project
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

TARGET_KERNEL_CONFIG := aosp_rhine_togari_defconfig
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/rhine/device.mk)
$(call inherit-product, vendor/sony/togari/togari-vendor.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/togari/overlay

PRODUCT_COPY_FILES += \
    device/sony/togari/rootdir/system/etc/flashled_calc_parameters.cfg:system/etc/flashled_calc_parameters.cfg \
    device/sony/togari/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/togari/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/togari/rootdir/system/etc/sensors_calib.conf:system/etc/sensors_calib.conf

PRODUCT_NAME := aosp_c6803
PRODUCT_DEVICE := togari
PRODUCT_MODEL := Xperia Z Ultra (AOSP)
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320 \
    ro.usb.pid_suffix=19C
