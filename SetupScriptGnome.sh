#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories

# Don't install Chrome.... try Chromium first
#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
#sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# google-chrome-stable

sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
sudo add-apt-repository ppa:peterlevi/ppa -y
sudo add-apt-repository ppa:daniel.pavel/solaar -y
sudo add-apt-repository ppa:webupd8team/atom -y

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

#Install Packages
sudo apt-get install -y chromium-browser chrome-gnome-shell kdenlive kde-runtime darktable vlc synaptic nemo gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape qbittorrent variety variety-slideshow blender audacity lmms openvpn network-manager-openvpn-gnome solaar solaar-gnome3 atom

#Upgrade all packagesi
sudo apt-get upgrade -y

#Install Google WebFonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install_debian.sh | sh

# -----------------------------------------
#Install things that need confirmation last
sudo apt-get install -y playonlinux virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso











