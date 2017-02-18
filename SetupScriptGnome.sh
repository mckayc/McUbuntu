#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories

# Install Google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
google-chrome-stable

# Install Chromium (note: Spotify/Flash does not work currently in Chromium)
# chromium-browser chrome-gnome-shell 

#sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
sudo add-apt-repository ppa:peterlevi/ppa -y
sudo add-apt-repository ppa:daniel.pavel/solaar -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:obsproject/obs-studio -y

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

#Install Packages
sudo apt-get install -y google-chrome-stable kdenlive kde-runtime darktable vlc synaptic nemo gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape qbittorrent variety variety-slideshow blender audacity lmms openvpn network-manager-openvpn-gnome solaar solaar-gnome3 atom playonlinux ffmpeg obs-studio

#Upgrade all packages
sudo apt-get upgrade -y

#Install Google WebFonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install_debian.sh | sh

#Install Opera Browser
wget -O - http://deb.opera.com/archive.key | sudo apt-key add -
sudo sh -c 'echo "deb http://deb.opera.com/opera-stable/ stable non-free" >> /etc/apt/sources.list.d/opera.list' 
sudo apt-get update 
sudo apt-get -y install opera

# -----------------------------------------
#Install things that need confirmation last
sudo apt-get install -y virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso

# -----------------------------------------
# For dual monitor graphics problems:
# sudo gedit /etc/default/grub (change "splash" to "nosplash")
# sudo update-grub
# -----------------------------------------











