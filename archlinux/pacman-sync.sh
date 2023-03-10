aur='
  brave-bin
  timeshift
  konsave
  fastfetch
  update-grub
'
packages='
  neovim
  nano
  grub-btrfs
  plasma-desktop
  sddm
  pipewire-pulse
  pipewire-alsa
  dolphin
  konsole
  plasma-nm
  plasma-pa
  kdeplasma-addons
  kde-gtk-config
  powerdevil
  bluedevil
  kscreen
  sddm-kcm
  breeze-gtk
  gwenview
  mpv
  bluez
  bluez-utils
  xsel
  bat
  exa
  yarn
  nodejs
  ranger
  fish
  htop
  btop
  ark
  plasma-wayland-session
  noto-fonts-emoji
  ksysguard
'

for i in $packages
  do
    if [[ $(pacman -Qs $i) > /dev/null ]]; then
      echo "The package $i is installed"
    else
      sudo pacman -S $i
    fi
  done

if [[ $(pacman -Qs paru) > /dev/null ]]; then
  for j in $aur
  do
    if [[ $(pacman -Qs $j) > /dev/null ]]; then
      echo "The package $j is installed"
    else
      paru -S $j
    fi
  done
else
  echo "paru (AUR Helper) is not installed..."
fi
