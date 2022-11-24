rm -rf hardware/lineage/compat
rm -rf hardware/qcom-caf/wlan
rm -rf hardware/qcom-caf/bootctrl
rm -rf hardware/google/pixel/kernel_headers
git clone -b spes https://github.com/Jabiyeff-Project/android_hardware_qcom_wlan.git hardware/qcom-caf/wlan
git clone -b lineage-20 https://github.com/LineageOS/android_hardware_xiaomi.git hardware/xiaomi
git clone -b lineage-20.0 https://github.com/Deepak5310/android_hardware_lineage_compat.git hardware/lineage/compat
git clone -b lineage-20.0-caf https://github.com/LineageOS/android_hardware_qcom_bootctrl.git hardware/qcom-caf/bootctrl

git clone --depth=1 https://github.com/Deepak5310/android_kernel_xiaomi_spes.git kernel/xiaomi/spes
git clone --depth=1 https://github.com/Jabiyeff/android_vendor_xiaomi_spes.git -b 13.0 vendor/xiaomi/spes
