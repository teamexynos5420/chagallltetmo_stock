#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7702528:02a39d78a0dea535464d50cd416b4a45e6ab3a6b; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7491584:f2fa4c15f4cca05a28bdb92cb8b35fd1ecbe9d10 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 02a39d78a0dea535464d50cd416b4a45e6ab3a6b 7702528 f2fa4c15f4cca05a28bdb92cb8b35fd1ecbe9d10:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
