# install some plugins
if ( -not ( Test-Path -Path $LocalAppData/nvim ) ) {
    $ConfigDir = (New-Item $LocalAppData/nvim -ItemType Directory).FullName
    git clone https://github.com/upnt/neovim-config $ConfigDir
}
