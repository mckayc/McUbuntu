#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories

# Install Google Chrome 

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer ktorrent

#Install Packages
sudo apt-get install -y google-chrome-stable vlc synaptic qbittorrent openvpn network-manager-openvpn kodi gparted

#Upgrade all packages
sudo apt-get upgrade -y

#Install Opera Browser
wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list' 
sudo apt-get update 
sudo apt-get -y install opera

# -----------------------------------------
#Install things that need confirmation last














