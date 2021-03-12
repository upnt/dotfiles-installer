#!/bin/bash
# setup
mkdir tmp

# install neovim
if [ -e /usr/local/bin/nvim ]; then
    echo "neovim has already installed"
else
    curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz > tmp/nvim-linux64.tar.gz
    tar -zxf tmp/nvim-linux64.tar.gz -C tmp
    
    mv -n tmp/nvim-linux64/bin/* /usr/local/bin
    mv -n tmp/nvim-linux64/lib/* /usr/local/lib
    mv -n tmp/nvim-linux64/share/* /usr/local/share
fi

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
