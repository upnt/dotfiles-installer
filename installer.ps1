# setup
Param( [switch]$SettingPath )
$userprofile = $Env:UserProfile
$TmpDir = (New-Item tmp -ItemType Directory -Force).FullName

Write-Output $userprofile

# install neovim
if ( -not ( Test-Path -Path $userprofile/nvim-win64 ) ) {
	Invoke-WebRequest https://github.com/neovim/neovim/releases/download/nightly/nvim-win64.zip -OutFile $TmpDir/nvim-win64.zip
	Expand-Archive -Path $TmpDir/nvim-win64.zip -DestinationPath $userprofile/nvim-win64
}
else {
    Write-Output "neovim has already installed"
}

# install dein.vim
if ( -not ( Test-Path -Path $userprofile/.cache/dein ) ) {
    Invoke-WebRequest https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.ps1 -OutFile $TmpDir/installer.ps1
    .\tmp\installer.ps1 ~/.cache/dein
}
else {
    Write-Output "dein.vim has already installed"
}

# install 

# setting path
if ( $SettingPath ) {
    Write-Output "setting Path"
    $path = $userprofile + "\nvim-win64\Neovim\bin"
	$environmentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
	$environmentPath = $path + ";" + $environmentPath
	[System.Environment]::SetEnvironmentVariable("Path", $environmentPath, "User")
}

# remove
Remove-Item -Path $TmpDir -Recurse -Force
