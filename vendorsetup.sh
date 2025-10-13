#!/bin/bash
# Cleanup script to avoid build conflicts
LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE="device/lineage/sepolicy/common/vendor/device.te"
DSPVolumeSynchronizer_BOMB="hardware/xiaomi/DSPVolumeSynchronizer/*"
HARDWARE_XIAOMI_DOLBY_BP="hardware/xiaomi/dolby/Android.bp"

# Remove duplicate SELinux declaration
if [ -f "$LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE" ]; then
    echo "Deleting $LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE to avoid build conflict..."
    rm -f "$LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE"
fi

if [ -f "$DSPVolumeSynchronizer_BOMB" ]; then
    echo "Deleting $DSPVolumeSynchronizer_BOMB to avoid build conflict..."
    rm -f "$DSPVolumeSynchronizer_BOMB"
fi

if [ -f "$HARDWARE_XIAOMI_DOLBY_BP" ]; then
    echo "Deleting $HARDWARE_XIAOMI_DOLBY_BP to avoid build conflict..."
    rm -f "$HARDWARE_XIAOMI_DOLBY_BP"
fi
