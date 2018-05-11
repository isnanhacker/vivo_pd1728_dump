#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33068270:13dddb62c58fe3fac298e5fb58af3ce787ac952d; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:19543274:ec9eb7952e3b70ea5597ff0842acb049e484dc39 EMMC:/dev/block/bootdevice/by-name/recovery 13dddb62c58fe3fac298e5fb58af3ce787ac952d 33068270 ec9eb7952e3b70ea5597ff0842acb049e484dc39:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
