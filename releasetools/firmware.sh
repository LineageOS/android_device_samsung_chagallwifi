#!/sbin/sh

set -e

# Mount system
mount -t ext4 /dev/block/platform/dw_mmc.0/by-name/SYSTEM /system

# Symlink wifi firmware
cd /system/etc/wifi/
find . -type f | while read file; do ln -s /system/etc/wifi/bcmdhd_apsta.bin /system/vendor/firmware/bcmdhd_apsta.bin_a1 ; done
find . -type f | while read file; do ln -s /system/etc/wifi/bcmdhd_ibss.bin /system/vendor/firmware/bcmdhd_ibss.bin_a1 ; done
find . -type f | while read file; do ln -s /system/etc/wifi/bcmdhd_mfg.bin /system/vendor/firmware/bcmdhd_mfg.bin_a1 ; done
find . -type f | while read file; do ln -s /system/etc/wifi/bcmdhd_sta.bin /system/vendor/firmware/bcmdhd_sta.bin_a1 ; done
echo "Symlinked Wifi firmware";

cd /
umount /system
exit 0
