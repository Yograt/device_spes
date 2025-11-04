#!/bin/bash
# Cleanup script to avoid build conflicts
LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE="device/lineage/sepolicy/common/vendor/device.te"

# Remove duplicate SELinux declaration
if [ -f "$LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE" ]; then
    echo "Deleting $LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE to avoid build conflict..."
    rm -f "$LINEAGE_SEPOLICY_COMMON_VENDOR_DEVICE"
fi

