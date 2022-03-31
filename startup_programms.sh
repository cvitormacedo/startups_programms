#!/usr/bin/env bash

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock

sudo apt update -y

## Installing snap's programms  ##

sudo apt install snapd
sudo snap install libreoffice
sudo snap install htop
sudo apt update -y


## Intalling flatpak's programms ##

flatpak install flathub com.discordapp.Discord -y 
flatpak install flathub com.spotify.Client -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.valvesoftware.Steam -y
sudo apt update -y

## Installing external programms ##

mkdir /home/$USER/Downloads/programms
cd /home/$USER/Downloads/programms

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sudo dpkg -i *.deb
sudo apt update -y
./Anaconda3-2021.11-Linux-x86_64.sh
## Installing repository programms ##

sudo apt-get install gparted -y
sudo apt-get install virtualbox -y
sudo apt update -y
sudo apt autoremove

