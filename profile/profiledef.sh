#!/usr/bin/env bash
iso_name="heseos"
iso_label="HESEOS_$(date +%Y%m)"
iso_publisher="HeseOS Project"
iso_application="HeseOS Arch Linux Live ISO"
iso_version="0.1.0"
install_dir="heseos"
buildmodes=('iso')
bootmodes=('bios.syslinux' 'uefi-iso')
arch="x86_64"
airootfs_image_type="squashfs"
file_permissions=(
  ["/etc/shadow"]="0:0:400"
)
