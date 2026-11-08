# Archiso profile overlay

The workflow starts from Archiso's official `releng` profile to retain its bootloader, initramfs and live-ISO configuration, then overlays `airootfs/` and appends `packages.x86_64`. This avoids maintaining fragile bootloader files in this repository.

The live account is created by `airootfs/root/customize_airootfs.sh`; tty1 automatically logs into the account and launches `heseos-session`.
