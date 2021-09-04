# install some plugins
if ( -not ( Test-Path -Path $userprofile/AppData/Local/nvim ) ) {
    $ConfigDir = (New-Item $userprofile/AppData/Local/nvim -ItemType Directory).FullName
    git clone https://github.com/upnt/neovim-config $ConfigDir
}
