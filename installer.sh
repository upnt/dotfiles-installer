curl -L https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz > nvim-linux64.tar.gz
tar -zxvf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz
mv -n nvim-linux64/bin/* /usr/local/bin
mv -n nvim-linux64/lib/* /usr/local/lib
mv -n nvim-linux64/share/* /usr/local/share
rm -rf nvim-linux64
