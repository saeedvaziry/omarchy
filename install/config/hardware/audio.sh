sudo pacman -Syu pipewire pipewire-alsa pipewire-pulse wireplumber
systemctl --user enable --now pipewire pipewire-pulse wireplumber
