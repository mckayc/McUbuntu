#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories

# Install Google Chrome - Do this manually. This way you have a browser while the script is running.

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
# sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# google-chrome-stable

# Install Chromium (note: Spotify/Flash does not work currently in Chromium)
# chromium-browser chrome-gnome-shell 

#sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
sudo add-apt-repository ppa:obsproject/obs-studio -y
#sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
#sudo add-apt-repository ppa:rikmills/latte-dock -y


#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

#Install Packages
sudo apt-get install -y google-chrome-stable kdenlive darktable vlc synaptic gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape qbittorrent blender audacity lmms openvpn network-manager-openvpn solaar playonlinux ffmpeg obs-studio mirage shutter hydrogen qjackctl exfat-utils gparted

#Install Latte-Dock
#sudo apt-get install -y ubuntu-make latte-dock

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

#Install VS Code via Umake
sudo umake web visual-studio-code

# -----------------------------------------
# For dual monitor graphics problems: Using 
# sudo gedit /etc/default/grub (change "splash" to "nosplash")
# sudo update-grub
# -----------------------------------------
# http://askubuntu.com/questions/64086/how-can-i-change-or-install-screensavers
# http://askubuntu.com/questions/292995/configure-screensaver-in-ubuntu
# command to lock: xscreensaver-command -lock











