#!/bin/bash 

sudo apt install vim

# curl
sudo apt install curl

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
