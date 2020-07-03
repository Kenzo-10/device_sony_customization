# ROM specific customization for Sony Open Devices
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

TARGET_KERNEL_HEADERS := kernel/sony/msm-4.14/kernel

CUST_PATH := device/sony/customization

# cust packages
PRODUCT_PACKAGES += \
    ims \
    ims_symlinks \
    QtiTelephonyService \
    QtiSystemService \
    libdiagsystem \
    bindmountims.rc \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    ims-ext-common \
    ims_ext_common.xml \
    telephony-ext \
    libimscamera_jni \
    libimsmedia_jni \
    embms \
    qcrilmsgtunnel \
    uceShimService \
    uimgbaservice \
    uimlpaservice

# IMS
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/vendor/etc/permissions/privapp-permissions-ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-ims.xml \
    $(CUST_PATH)/ims/com.qualcomm.qti.imscmservice-V2.0-java.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/com.qualcomm.qti.imscmservice-V2.0-java.xml \
    $(CUST_PATH)/ims/embms.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/embms.xml \
    $(CUST_PATH)/ims/lpa.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/lpa.xml \
    $(CUST_PATH)/ims/qcrilhook.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/qcrilhook.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.ims.xml \
    $(CUST_PATH)/ims/qcrilmsgtunnel.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-qcrilmsgtunnel.xml \
    $(CUST_PATH)/ims/telephonyservice.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/telephonyservice.xml \
    $(CUST_PATH)/ims/UimGba.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/UimGba.xml \
    $(CUST_PATH)/ims/UimGbaManager.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/UimGbaManager.xml \
    $(CUST_PATH)/ims/uimremoteclient.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/uimremoteclient.xml \
    $(CUST_PATH)/ims/uimremoteserver.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/uimremoteserver.xml \
    $(CUST_PATH)/ims/UimService.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/UimService.xml \
    $(CUST_PATH)/ims/com.qualcomm.qti.imscmservice-V2.0-java.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/com.qualcomm.qti.imscmservice-V2.0-java.jar \
    $(CUST_PATH)/ims/qcrilhook.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/qcrilhook.jar \
    $(CUST_PATH)/ims/QtiTelephonyServicelibrary.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/QtiTelephonyServicelibrary.jar \
    $(CUST_PATH)/ims/uimgbalibrary.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/uimgbalibrary.jar \
    $(CUST_PATH)/ims/uimgbamanagerlibrary.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/uimgbamanagerlibrary.jar \
    $(CUST_PATH)/ims/uimlpalibrary.jar:$(TARGET_COPY_OUT_PRODUCT)/framework/uimlpalibrary.jar

PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1  \
    persist.dbg.wfc_avail_ovr=1

# VoLTE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.is_voip_enabled=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.voice_on_lte=1

TARGET_USES_AOSP_APNS_CONF := true

# Temporary: Enable QCRILD for all platforms
TARGET_USE_QCRILD := true
