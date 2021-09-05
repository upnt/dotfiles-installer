# install some plugins
if ( -not ( Test-Path -Path $Env:LocalAppData/nvim ) ) {
    $ConfigDir = (New-Item $Env:LocalAppData/nvim -ItemType Directory).FullName
    git clone https://github.com/upnt/neovim-config $ConfigDir
}
