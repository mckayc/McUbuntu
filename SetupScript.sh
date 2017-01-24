#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
sudo add-apt-repository ppa:peterlevi/ppa -y

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get remove rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins

#Install Packages
sudo apt-get install -y google-chrome-stable kdenlive darktable vlc synaptic nemo playonlinux gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso qbittorrent variety variety-slideshow blender audacity lmms openvpn network-manager-openvpn-gnome

#Upgrade all packages
sudo apt-get upgrade -y



