#!/bin/bash

# Ask for email
echo "Hey Marcus :3 Please enter your email:"
read my_email

# Update
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y

# Install packages
sudo apt install git curl vim zsh vlc deluge qbittorrent blender htop neofetch krita nmap gnome-tweaks fonts-firacode -y

# Vundle (Vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Nord theme gnome terminal
cd ~/Downloads/ && git clone https://github.com/arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal/src/ && ./nord.sh && cd ../../ && rm -rf nord-gnome-terminal && cd

# SSH
ssh-keygen -f ~/.ssh/id_rsa -t rsa -N '' -C $my_email

# Atom
wget https://github.com/atom/atom/releases/latest/download/atom-amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/atom-amd64.deb -y
rm ~/Downloads/atom-amd64.deb

# Oracle VM VirtualBox
wget https://download.virtualbox.org/virtualbox/6.1.12/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb -y
rm ~/Downloads/virtualbox-6.1_6.1.12-139181~Ubuntu~bionic_amd64.deb
wget https://download.virtualbox.org/virtualbox/6.1.12/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack -P ~/Downloads
yes | sudo vboxmanage extpack install ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack
rm ~/Downloads/Oracle_VM_VirtualBox_Extension_Pack-6.1.12.vbox-extpack

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P ~/Downloads
sudo apt install ~/Downloads/google-chrome-stable_current_amd64.deb -y
rm ~/Downloads/google-chrome-stable_current_amd64.deb

# Snapcraft
sudo snap install discord
sudo snap install spotify
sudo snap install sublime-text --classic
sudo snap install sublime-merge --classic
sudo snap install code --classic

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

# Display public key for GitHub
cat ~/.ssh/id_rsa.pub
