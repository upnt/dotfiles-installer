Invoke-WebRequest https://github.com/neovim/neovim/releases/download/nightly/nvim-win64.zip -OutFile nvim-win64.zip
Expand-Archive -Path ./nvim-win64.zip -DestinationPath %UserProfile%
$environmentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
$environmentPath += "%UserProfile%\Neovim\bin;"
[System.Environment]::SetEnvironmentVariable("Path", $environmentPath, "User")
