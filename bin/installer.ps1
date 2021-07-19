# setup
Param( [switch]$SettingPath )
$userprofile = $Env:UserProfile
$TmpDir = (New-Item tmp -ItemType Directory -Force).FullName

Write-Output $userprofile

# install scoop
if ( -not ( Test-Path -Path $userprofile/scoop ) ) {
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    iwr -useb get.scoop.sh | iex
}

scoop install git
scoop bucket add extras
scoop install neovim

# install dein.vim
if ( -not ( Test-Path -Path $userprofile/.cache/dein ) ) {
    Invoke-WebRequest https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.ps1 -OutFile $TmpDir/installer.ps1
    .\tmp\installer.ps1 ~/.cache/dein
}

# install some plugins(include builtin lsp)
if ( -not ( Test-Path -Path $userprofile/AppData/Local/nvim ) ) {
    $ConfigDir = (New-Item $userprofile/AppData/Local/nvim -ItemType Directory).FullName
    git clone https://github.com/upnt/neovim-config $ConfigDir

}

# remove
Remove-Item -Path $TmpDir -Recurse -Force
