# Add Clang For Compile Kernel
cd prebuilts/clang/host/linux-x86
mkdir clang-r487747c ; cd clang-r487747c ; wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/android14-release/clang-r487747c.tar.gz ; tar -xf * && ls
cd ../../../../..

# Clone KernelTree
https://github.com/VannTakashi/kernel_xiaomi_gale kernel/xiaomi/gale

# Clone Vendor tree
git clone https://github.com/VannTakashi/vendor_xiaomi_gale.git -b dev/lineage-20 vendor/xiaomi/gale

# Clone Sepolicy vndr
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-20 device/mediatek/sepolicy_vndr

# Clone Hardware supports mediatek
git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-20 hardware/mediatek

# Clone Xiaomi Hardware supports
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-20 hardware/xiaomi
