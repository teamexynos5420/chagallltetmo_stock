#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7704576:bfb0abf40de3f983a6ed23c6b5c03088ac99d91c; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7489536:3ad6e13f35b35bb5ddf5b4426b14365f95df742a EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY bfb0abf40de3f983a6ed23c6b5c03088ac99d91c 7704576 3ad6e13f35b35bb5ddf5b4426b14365f95df742a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
