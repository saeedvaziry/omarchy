echo "Fix audio"

sudo pacman -Syu pipewire pipewire-alsa pipewire-pulse wireplumber
systemctl --user enable --now pipewire pipewire-pulse wireplumber

echo "Install PHP by default"
omarchy-install-dev-env php
