#!/bin/bash
# setup
mkdir tmp

# install dein.vim
if [ -e ~/.cache/dein ]; then
    echo "dein.vim has already installed"
else
    curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > tmp/installer.sh
    sh tmp/installer.sh ~/.cache/dein
fi

# install config files
if [ -e ~/.config/nvim ]; then
    echo "You have already use config files for neovim"
else
    mkdir ~/.config/nvim
    git clone https://github.com/upnt/neovim-config.git ~/.config/nvim
fi
# remove
rm -rf tmp
