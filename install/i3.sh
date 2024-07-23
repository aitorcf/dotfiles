#!/bin/bash


# dependencies
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake

# libxcb-xrm-dev
sudo apt install libxcb-xrm-dev || (\
mkdir tmp;\
cd tmp;\
git clone https://github.com/Airblader/xcb-util-xrm;\
cd xcb-util-xrm;\
git submodule update --init;\
./autogen.sh --prefix=/usr;\
make;\
sudo make install;\
cd ../..;\
rm -r tmp;\
)

# rofi launcher
sudo apt install rofi

# i3-gaps
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps

# bumblebee-status
sudo apt install pip
git clone git://github.com/tobi-wan-kenobi/bumblebee-status ~/.config/i3/bumblebee-status
sudo apt install python3-pulsectl # audio
sudo apt install python3-psutil; sudo snap install gnome-system-monitor # cpu
sudo apt install fonts-font-awesome
sudo apt install fonts-powerline

# firacode font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
fc-cache -fv
rm FiraCode.zip
