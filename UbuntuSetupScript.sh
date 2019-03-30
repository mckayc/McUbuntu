#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories

# Install Google Chrome - Do this manually. This way you have a browser while the script is running.

# wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
# sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# google-chrome-stable

# Install Chromium (note: Spotify/Flash does not work currently in Chromium)
# chromium-browser chrome-gnome-shell 

# Install Etcher (USB Disk Creation Software)
#echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | sudo tee /etc/apt/#sources.list.d/etcher.list
#sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61

# Copy over Custom shortcuts
wget https://raw.githubusercontent.com/mckayc/McUbuntu/master/McGlobalShortcuts.kksrc

cp ~/.kde/share/config/kdeglobals ~/.kde/share/config/kdeglobals.bak
mv McGlobalShortcuts.kksrc ~/.kde/share/config/kdeglobals

# Add additional Repositories

#Kdenlive
sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
#OBS Studio
sudo add-apt-repository ppa:obsproject/obs-studio -y
#Unetbootin - Create live USBs
sudo add-apt-repository ppa:gezakovacs/ppa -y
#WoeUSB - Create live USBs for Windows
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

#sudo add-apt-repository ppa:graphics-drivers/ppa -y
#sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
#sudo add-apt-repository ppa:flexiondotorg/youtube-dl-gui -y
#sudo add-apt-repository ppa:wireshark-dev/stable -y
#sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
#sudo add-apt-repository ppa:rikmills/latte-dock -y


#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

#Install Packages
sudo apt-get install -y kdenlive darktable vlc synaptic gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape qbittorrent blender audacity lmms openvpn network-manager-openvpn solaar playonlinux ffmpeg obs-studio mirage hydrogen qjackctl exfat-utils gparted rar unrar-free woeusb vlc-plugin-fluidsynth fluid-soundfont-gs fluid-soundfont-gm speedcrunch handbrake freecad unetbootin

#Not working for some reason:
# sudo apt-get install -y shutter etcher-electron youtube-dlg

#Install Latte-Dock
#sudo apt-get install -y ubuntu-make latte-dock

#Upgrade all packages
sudo apt-get upgrade -y

#Install Google WebFonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash

# -----------------------------------------
#Install things that need confirmation last

sudo apt-get install -y virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso wireshark

#Install VS Code via Umake
sudo umake web visual-studio-code
