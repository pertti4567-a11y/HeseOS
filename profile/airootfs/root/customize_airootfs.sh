#!/usr/bin/env bash
set -euo pipefail

useradd --create-home --groups wheel,video,audio,input,storage --shell /bin/bash heseos
printf 'heseos ALL=(ALL:ALL) NOPASSWD: ALL\n' > /etc/sudoers.d/heseos
chmod 0440 /etc/sudoers.d/heseos
install -d -m 0755 /etc/systemd/system/getty@tty1.service.d
cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf <<'EOF'
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin heseos --noclear %I $TERM
EOF
chmod 0755 /usr/local/bin/heseos-session /usr/local/bin/heseos-desktop-install
cp -a /etc/skel/. /home/heseos/
install -d -m 0755 /opt/heseos/kiosk
chown -R heseos:heseos /home/heseos
systemctl enable NetworkManager.service
systemctl enable getty@tty1.service
