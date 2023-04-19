# Jurrwhy

# Hola mundo
git clone -b extended https://github.com/Surya-Android-13/device_xiaomi_surya.git device/xiaomi/surya
git clone -b thirteen https://github.com/Surya-Android-13/vendor_xiaomi_surya.git vendor/xiaomi/surya
git clone -b lineage-20 https://github.com/Surya-Android-13/kernel_xiaomi_surya.git kernel_xiaomi_surya
rm -rf packages/resources/devicesettings && git clone -b thirteen https://github.com/CC-Surya/packages_resources_devicesettings.git packages/resources/devicesettings
git clone -b lineage-20 https://github.com/random-aosp-stuff/android_hardware_xiaomi.git hardware/xiaomi
