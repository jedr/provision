# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install some apps
choco install -y firefox
choco install -y keepass
choco install -y notepad3
choco install -y openjdk8
choco install -y syncthing
choco install -y synctrayzor
