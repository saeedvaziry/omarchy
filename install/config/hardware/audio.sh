sudo pacman -Syu pipewire pipewire-alsa pipewire-pulse wireplumber --noconfirm
systemctl --user enable --now pipewire pipewire-pulse wireplumber
