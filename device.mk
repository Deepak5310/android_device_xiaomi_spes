#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_vendor=true \
    POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    FILESYSTEM_TYPE_vendor=ext4 \
    POSTINSTALL_OPTIONAL_vendor=true

PRODUCT_PACKAGES += \
    checkpoint_gc \
    otapreopt_script

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Partitions
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Rootdir
PRODUCT_PACKAGES += \
    ultra_playback.sh \
    init.mi.usb.sh \
    init.mdm.sh \
    init.class_main.sh \
    init.qti.display_boot.sh \
    init.qcom.class_core.sh \
    loopback.sh \
    init.qti.qcv.sh \
    init.qcom.usb.sh \
    bt_close.sh \
    init.qti.chg_policy.sh \
    ultra_record.sh \
    init.qcom.post_boot.sh \
    init.qti.early_init.sh \
    init.qcom.coex.sh \
    playback.sh \
    myftm.agent.sh \
    record.sh \
    init.qcom.sdio.sh \
    init.qcom.early_boot.sh \
    lct_rfs_restore.sh \
    init.qti.dcvs.sh \
    init.crda.sh \
    record_playback.sh \
    qca6234-service.sh \
    wifitest_close.sh \
    wifitest.sh \
    init.qcom.sh \
    bluedut.sh \
    init.qcom.efs.sync.sh \
    init.qti.media.sh \
    init.qcom.sensors.sh \

PRODUCT_PACKAGES += \
    fstab.emmc \
    init.qcom.usb.rc \
    init.qcom.rc \
    init.qcom.factory.rc \
    init.qti.ufs.rc \
    init.target.rc \
    init.stnfc.rc \
    init.recovery.qcom.rc \
    miui.factoryreset.rc \
    init.recovery.hardware.rc \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.emmc:$(TARGET_VENDOR_RAMDISK_OUT)/first_stage_ramdisk/fstab.emmc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/spes/spes-vendor.mk)
