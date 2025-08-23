# Remove dusplicate decleration
rm -rf device/lineage/sepolicy/common/vendor/device.te

# Remove conflict qti_kernel_headers by deleting the block's lines
sed '97,101d' vendor/lineage/build/soong/Android.bp
