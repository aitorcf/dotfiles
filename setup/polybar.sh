#!/bin/bash

sudo apt update
sudo apt install polybar -y

# ---
# Theme: https://github.com/emgyrz/polybar-gruvbox-theme
# ---

# backup current config
mv ~/.config/polybar ~/.config/polybar.backup

# download repo
git clone --depth=1 https://github.com/emgyrz/polybar-gruvbox-theme.git ~/.config/polybar


# ---
# Fonts
# ---

# use your package manager to get JetBrains Mono
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

# Material Icons (Round)
cp -R ~/.config/polybar/fonts/MaterialIcons ~/.fonts/ && fc-cache -f

