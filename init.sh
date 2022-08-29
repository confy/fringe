# add misc repos
sudo add-apt-repository ppa:videolan/master-daily ppa:gerardpuig/ppa ppa:eugenesan/ppa pps:peek-developers/stable -y

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
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update -y
sudo apt upgrade -y


sudo apt install flameshot git stacer synaptic neovim packer \
    terraform awscli virtualbox kde-full cpu-x discord-canary \
    google-chrome-stable gparted htop kubuntu-desktop \
    mc papirus-icon-theme sl vlc transmission-gtk \
    variety yakuake ubuntu-cleaner caffeine neofetch peek \
    docker-ce docker-ce-cli containerd.io zsh -y

#oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
touch ~/.zshrc
sed -i "s/\(ZSH_THEME *= *\).*/\1wezm+/" ~/.zshrc

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
sudo apt install ./zoom_amd64.deb

#snaps
snap install code-insiders vlc dbeaver-ce postman
