#!/usr/bin/env bash
# ArchBang Classic profile (BIOS only)

iso_name="archbang-classic"
iso_label="ABCLASSIC_$(date +%d%m%y)"
iso_publisher="ArchBang <https://www.archbang.org>"
iso_application="ArchBang Classic Live Iso"
# DDMMYY dev build date with an rc suffix for release-candidate builds; swap
# for semantic versioning (e.g. "1.0.0") on final release
iso_version="$(date +%d%m%y)"
install_dir="arch"
buildmodes=("iso")
bootmodes=('bios.syslinux')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.gnupg"]="0:0:700"
  ["/etc/skel/Scripts/"]="0:0:755"
)
#bootstrap_tarball_compression=(gzip -cn9)
