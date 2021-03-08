$userprofile = $Env:UserProfile
Invoke-WebRequest https://github.com/neovim/neovim/releases/download/nightly/nvim-win64.zip -OutFile nvim-win64.zip
Expand-Archive -Path ./nvim-win64.zip -DestinationPath $Env:UserProfile/nvim-win64
$environmentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
$environmentPath = $Env:UserProfile + "\nvim-win64\Neovim\bin;" + $environmentPath
[System.Environment]::SetEnvironmentVariable("Path", $environmentPath, "User")
rm nvim-win64.zip
