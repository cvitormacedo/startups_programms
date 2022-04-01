#!/usr/bin/env bash

sudo rm /var/lib/dpkg/lock-frontend
sudo rm /var/cache/apt/archives/lock
sudo apt-get install gnome-tweaks -y
sudo apt install zip unzip

sudo apt update -y

## Installing snap's programms  ##

sudo apt install snapd
sudo snap install libreoffice
sudo snap install htop
sudo snap install teams
sudo snap install mgba
sudo apt update -y


## Intalling flatpak's programms ##

flatpak install flathub com.discordapp.Discord -y 
flatpak install flathub com.spotify.Client -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.valvesoftware.Steam -y
sudo apt update -y

## Installing external programms ##

mkdir /home/$UESR/.themes
mkdir /home/$UESR/.icons
mkdir /home/$USER/Downloads/programms
cd /home/$USER/Downloads/programms

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -c https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sudo dpkg -i *.deb
sudo apt update -y
chmod +x Anaconda3-2021.11-Linux-x86_64.sh
./Anaconda3-2021.11-Linux-x86_64.sh

cd

mkdir /home/$USER/Downloads/personalisation
cd /home/$USER/Downloads/personalisation

wget -c https://dl2.pling.com/api/files/download/j/eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6MTY0ODE2MDE1OCwidSI6bnVsbCwibHQiOiJkb3dubG9hZCIsInMiOiIzYTU1MDAxN2Y2ZDQwZGI1MmMyYTg4NGFhNDkzMmMwZmExZTc2YzU1NGJkODkwOWQ4MzM4ZWM3NzhjYzY4ZjhlOGQ5NzE2MWQ5OTZjNzU1MzAzYmRkMzMyNjJhODZmNjI2M2FhNDc1ZWJlMDk3ODQ5YTViZGQ3Y2M5NzkwNGM4YiIsInQiOjE2NDg3ODcwMTUsInN0ZnAiOiI2MzI5ODM5OGNiMGY4Y2ZjY2Y1NTA0YTFmNmYxYjFkNSIsInN0aXAiOiIyODA0OmQ1MTo2MDkzOmEzMDA6Y2M0MjphMjhlOjc4NDc6NmU1MiJ9.XYcVT0ndkz56ek4WWPw78ljAS2Gr665gdcNP0FpjVg0/Juno-ocean-v40.tar.xz
wget -c https://codeload.github.com/m4thewz/dracula-icons/zip/refs/heads/main

tar -xvf Juno-ocean-v40.tar.xz
unzip dracula-icons-main.zip


## Installing repository programms ##

sudo apt install gnome-sushi -y
sudo apt-get install gparted -y
sudo apt-get install virtualbox -y
sudo apt update -y
sudo apt autoremove -y

