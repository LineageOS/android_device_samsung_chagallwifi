#!/sbin/sh

# Symlink wifi firmware
ln -fs /system/etc/wifi/bcmdhd_apsta.bin /system/vendor/firmware/bcmdhd_apsta.bin_a1
ln -fs /system/etc/wifi/bcmdhd_ibss.bin /system/vendor/firmware/bcmdhd_ibss.bin_a1
ln -fs /system/etc/wifi/bcmdhd_mfg.bin /system/vendor/firmware/bcmdhd_mfg.bin_a1
ln -fs /system/etc/wifi/bcmdhd_sta.bin /system/vendor/firmware/bcmdhd_sta.bin_a1
echo "Symlinked Wifi firmware";

exit 0
