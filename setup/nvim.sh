# install nvim appimage
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
mkdir -p ~/bin
mv nvim-linux-x86_64.appimage ~/bin/nvim

# ---------------- #
# Node and related #
# ---------------- #
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 24
# Verify the Node.js version:
node -v # Should print "v24.12.0".
# Verify npm version:
npm -v # Should print "11.6.2".
# install "neovim" npm (?)
npm install neovim
# n
npm install -g n

# Treesitter #
npm install tree-sitter-cli

# ripgrep
sudo apt install ripgrep

# jetls
sh julia.sh
julia -e 'using Pkg; Pkg.Apps.add(; url="https://github.com/aviatesk/JETLS.jl", rev="release")'
