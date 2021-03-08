mkdir tmp
curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz > tmp/nvim-linux64.tar.gz
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > tmp/installer.sh
tar -zxf tmp/nvim-linux64.tar.gz -C tmp

mv -n tmp/nvim-linux64/bin/* /usr/local/bin
mv -n tmp/nvim-linux64/lib/* /usr/local/lib
mv -n tmp/nvim-linux64/share/* /usr/local/share
sh tmp/installer.sh ~/.cache/dein

rm -rf tmp
