#!/usr/bin/env bash
# First boot setup for WhirlyOS

# 1. Create default user 'whirly'
if ! id whirly &>/dev/null; then
  useradd -m -G users,wheel -s /bin/bash whirly
  echo "whirly:whirly" | chpasswd
  echo "User 'whirly' created with default password 'whirly'"
fi

# 2. Apply GNOME wallpaper
WALLPAPER_PATH="/WonderRepo/whirlyos-wallpapers/whirlyos-wallpaper.png"
if command -v gsettings &>/dev/null && [ -f "$WALLPAPER_PATH" ]; then
  su - whirly -c "
    gsettings set org.gnome.desktop.background picture-uri \
    'file://$WALLPAPER_PATH'
  "
fi

# 3. Enable Plymouth splash in GRUB
sed -i 's/quiet/quiet splash/' /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg

# 4. Disable this script after first run
mv /etc/local.d/first-boot.start /etc/local.d/first-boot.start.done

# 5. Ensure Plymouth service starts
systemctl enable plymouth-start.service

exit 0