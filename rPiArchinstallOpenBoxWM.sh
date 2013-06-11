#!/bin/bash
sudo pacman -Syy xorg-server xorg-xinit xorg-server-utils
sudo pacman -Syy mesa xf86-video-fbdev xf86-video-vesa
sudo pacman -Syy openbox
mkdir -p ~/.config/openbox
cp /etc/xdg/openbox/* ~/.config/openbox/
echo 'exec openbox-session' > ~/.xinitrc
