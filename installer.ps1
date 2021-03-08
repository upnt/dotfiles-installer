$userprofile = $Env:UserProfile

New-Item tmp -ItemType Directory
Invoke-WebRequest https://github.com/neovim/neovim/releases/download/nightly/nvim-win64.zip -OutFile tmp/nvim-win64.zip
Expand-Archive -Path tmp/nvim-win64.zip -DestinationPath $Env:UserProfile/nvim-win64
Invoke-WebRequest https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.ps1 -OutFile tmp/installer.ps1

$path = $Env:UserProfile + "\nvim-win64\Neovim\bin;"
if ( -not ( Test-Path -Path $path ) ) {
	$environmentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
	$environmentPath = $path + $environmentPath
	[System.Environment]::SetEnvironmentVariable("Path", $environmentPath, "User")
}
./tmp/installer.ps1 ~/.cache/dein

Remove-Item tmp -Recurse -Force
