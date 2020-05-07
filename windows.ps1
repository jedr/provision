# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install some apps
choco install -y firefox
choco install -y git
git config --global core.autocrlf false
choco install -y googlechrome
choco install -y keepass
choco install -y notepad3
choco install -y openjdk8
choco install -y postman
choco install -y virtualbox
choco install -y vagrant
choco install -y vscode
code --install-extension vscodevim.vim
code --install-extension eamodio.gitlens
code --install-extension editorconfig.editorconfig
code --install-extension github.vscode-pull-request-github