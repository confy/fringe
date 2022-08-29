# add misc repos
sudo add-apt-repository ppa:nginx/stable ppa:cwchien/gradle ppa:videolan/master-daily ppa:gerardpuig/ppa ppa:eugenesan/ppa pps:peek-developers/stable -y

sudo apt -y install wget
sudo apt -y install curl
sudo apt -y install whois
sudo apt -y install zip
sudo apt -y install unzip
sudo apt -y install unrar
# sendmail or postfix
sudo apt -y install sendmail
sudo apt -y install postfix
# universal packaging system
sudo apt -y install flatpak
sudo apt install gnome-software-plugin-flatpak
# SSH
sudo apt -y install openssh-server
sudo apt -y install cron-apt
# BASH script checker: http://m.jakstys.lt/tech/2016/08/bash
sudo apt -y install shellcheck
# https://askubuntu.com/questions/892076/how-to-selectively-purge-old-kernels-all-at-once/892077#892077
sudo apt -y install dialog # DEP of server version of "rm-kernels-server"

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y

#add hashicorp repo
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

#docker repo
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
    "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null

sudo apt update -y
sudo apt upgrade -y

#fonts
sudo apt -y install ttf-mscorefonts-installer # Microsoft fonts for Libreoffice.
:'    wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
    wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
    mkdir -p ~/.fonts
    mv PowerlineSymbols.otf ~/.fonts/
    mkdir -p ~/.config/fontconfig/conf.d
    mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
    fc-cache -vf ~/.fonts/
'

sudo apt install nginx flameshot git stacer synaptic neovim packer \
    terraform awscli virtualbox kde-full cpu-x discord-canary \
    google-chrome-stable gparted htop kubuntu-desktop \
    mc papirus-icon-theme sl vlc transmission-gtk \
    variety yakuake ubuntu-cleaner caffeine neofetch peek \
    docker-ce fontforgen docker-ce-cli containerd.io zsh vagrant nomad vault mysql-server smartctl thermald linux-tools-common -y

sudo apt -y install golang              # Go compiler - METApackage
sudo apt -y install golang-go.net-dev   # supplementary networking dev libs
sudo apt -y install golang-go.tools     # supplementary Go tools
sudo apt -y install golang-go.tools-dev # suppl. Go tools - development

sudo apt -y install build-essential
# PIP = Python Installer
sudo apt -y install pip3
sudo apt -y install pip-installer
sudo apt -y install python-setuptools
sudo apt -y install python-pip python-dev python-yaml
sudo apt -y install python-software-properties
# python3
sudo apt -y install python-virtualenv python3-dev pkgconf
sudo apt -y install libfreetype6-dev libfreetype6 libxft-dev
sudo apt -y install libblas-dev liblapack-dev libyaml-dev
sudo apt -y install python3-pip python3

sudo apt -y install npm
sudo npm install -g configurable-http-proxy
sudo npm install -g jslint
sudo npm install -g jshint
ln -s ${yaksha_dir}.jshintrc ~/.jshintrc
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install nodejs # nodejs -v = 0.10.28 # dont pin versions
sudo apt -y install nodejs-legacy
sudo apt -y install gradle

git config credential.helper store
git config --global user.name "confy"
git config --global user.email "me@adrian.ooo"

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
touch ~/.zshrc
sed -i "s/\(ZSH_THEME *= *\).*/\1wezm+/" ~/.zshrc

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

#snaps
snap install code-insiders vlc dbeaver-ce postman
