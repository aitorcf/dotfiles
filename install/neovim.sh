#!/bin/bash 

# neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
echo "export PATH=\"\$PATH:/opt/nvim-linux64/bin\"" >> ~/.bashrc
echo "export PATH=\"\$PATH:/opt/nvim-linux64/bin\"" >> ~/.zshrc

# ripgrep 
sudo apt install ripgrep

# clipboard tool
sudo apt install xclip

# packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# vim-tex
sudo apt install zathura
sudo apt install texlive-full
udo apt-get install latexmk
