#!/bin/bash

# Ask for email
echo "Hey Marcus :3 Please enter your email:"
read my_email

# Update
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install packages
sudo apt install git curl vim zsh vlc deluge qbittorrent blender htop neofetch krita nmap gnome-tweaks fonts-firacode chrome-gnome-shell dconf-editor gimp tmux pidgin i3lock scrot imagemagick snapd -y

# Vundle (Vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Nord theme gnome terminal
cd ~/Downloads/ && git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src/ && ./nord.sh && cd ../../ && rm -rf nord-gnome-terminal/ && cd

# Fonts
cd ~/Downloads/ && git clone https://github.com/powerline/fonts.git
cd fonts/ && ./install.sh && cd ../ && rm -rf fonts/

git clone https://github.com/ryanoasis/nerd-fonts.git && cd nerd-fonts/ && ./install.sh && cd ../ && rm -rf nerd-fonts/ && cd

# SSH
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N '' -C $my_email

# Atom
wget https://github.com/atom/atom/releases/latest/download/atom-amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/atom-amd64.deb -y
rm ~/Downloads/atom-amd64.deb

# Oracle VM VirtualBox (Ubuntu 18.04)
wget https://download.virtualbox.org/virtualbox/6.1.12/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb -y
rm ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb

# Oracle VM Virtualbox (Ubuntu 20.04)
wget https://download.virtualbox.org/virtualbox/6.1.12/virtualbox-6.1_6.1.12-139181~Ubuntu~eoan_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~eoan_amd64.deb -y
rm ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~eoan_amd64.deb

# Oracle VM VirtualBox Extension Pack
wget https://download.virtualbox.org/virtualbox/6.1.12/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack -P ~/Downloads
yes | sudo vboxmanage extpack install ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack
rm ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb -y
rm ~/Downloads/google-chrome-stable_current_amd64.deb

# NordVPN
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb -P ~/Downloads
sudo apt install ~/Downloads/nordvpn-release_1.0.0_all.deb -y
rm ~/Downloads/nordvpn-release_1.0.0_all.deb

# Stacer
sudo add-apt-repository ppa:oguzhaninan/stacer -y
sudo apt update
sudo apt install stacer -y

# OBS
sudo apt install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt update && sudo apt install obs-studio -y

# Timeshift
sudo add-apt-repository -y ppa:teejee2008/timeshift
sudo apt update
sudo apt install timeshift -y

# Brave Browser
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y

# Snapcraft
sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic

# Spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install spotify-client -y

# Discord
wget https://discord.com/api/download?platform=linux&format=deb -P ~/Downloads
sudo apt install ~/Downloads/discord-*.deb -y
rm ~/Downloads/discord-*.deb

# Visual Studio Code
wget https://go.microsoft.com/fwlink/?LinkID=760868 -P ~/Downloads
sudo apt install ~/Downloads/code_*_amd64.deb -y
rm ~/Downloads/code_*_amd64.deb

# Display public key for GitHub
cat ~/.ssh/id_rsa.pub
