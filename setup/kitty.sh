#!/bin/bash

# install kitty to ~/.local/kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# symlink kitty executable to binary path
mkdir ~/bin
ls -n ~/.local/kitty.app/bin/kitty ~/bin/kitty
ls -n ~/.local/kitty.app/bin/kitten ~/bin/kitten

#----
# to change colors, do:
# > kitten themes
