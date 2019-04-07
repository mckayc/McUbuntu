#!/bin/bash
# Setup script for installing all my favorite software.

#-------------------------------------------------------
#---------------------INSTRUCTIONS----------------------
#Install Google Chrome manually so that you have a browser to setup while everything else is downloading
# - - - - - 
#In terminal type/paste in the following command:
# wget http://bit.ly/mckayubuntu ; chmod +x mckayubuntu ; ./mckayubuntu
#-------------------------------------------------------

#Add PPA Repositories

# Install Etcher (USB Disk Creation Software)
#echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | sudo tee /etc/apt/#sources.list.d/etcher.list
#sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61

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
sudo apt-get install -y kdenlive darktable vlc synaptic gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape qbittorrent blender audacity lmms openvpn network-manager-openvpn solaar playonlinux ffmpeg obs-studio mirage hydrogen qjackctl exfat-utils gparted rar unrar-free woeusb vlc-plugin-fluidsynth fluid-soundfont-gs fluid-soundfont-gm speedcrunch handbrake freecad unetbootin ubuntu-make grsync git

#Not working for some reason:
# sudo apt-get install -y shutter etcher-electron youtube-dlg

#Upgrade all packages
sudo apt-get upgrade -y

#Install Google WebFonts
curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash

# -----------------------------------------
#Install things that need confirmation last

sudo apt-get install -y virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso wireshark

#Install VS Code via Umake
sudo umake web visual-studio-code

#------------------------------------------
#System Tweaks

#Increase Swap File Size to 16GB
sudo swapoff /swapfile
sudo rm  /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=16384
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

#------------------------------------------
#Clone Git Repository
git clone https://github.com/mckayc/McUbuntu


#------------------------------------------
#Copy configs from previous setup (backed up daily to Github repository)

# Copy over KDE Custom shortcuts
cp ~/.kde/share/config/kdeglobals ~/.kde/share/config/kdeglobals.bak
cp ~/McUbuntu/kdeglobals ~/.kde/share/config/kdeglobals
# Copy over Darktable Styles
unzip ~/.config/darktable/styles.zip -d ~/.config/darktable/











#------------------------------------------
#Setup Cron Jobs 

#Make Zip folders at 6:15pm Every Day


#Darktable Styles
crontab -l | { cat; echo "15 18 * * * zip -r ~/.config/darktable/styles.zip ~/.config/darktable/styles/"; } | crontab -



#Copy files to Git repository at 6:20 Every Day

#KDE Global Hotkeys
crontab -l | { cat; echo "15 18 * * * cp ~/.kde/share/config/kdeglobals ~/McUbuntu/"; } | crontab -
#Darktable Styles
crontab -l | { cat; echo "15 18 * * * cp -a ~/.config/darktable/styles/ ~/McUbuntu/"; } | crontab -





#Push Github repository




# Copy over Kdenlive effects
# BEFORE starting a new system, you should navigate to ~/.local/share/kdenlive/ then right click on the effects folder and zip it. Upload it here.
wget https://github.com/mckayc/McUbuntu/blob/master/effects.zip?raw=true
unzip effects.zip?raw=true -d ~/.local/share/kdenlive/



# Copy over OBS Profile and scenes
# BEFORE starting a new system, you should navigate to ~/.config/obs-studio/ then right click on the basic folder and zip it. Upload it here.
wget https://github.com/mckayc/McUbuntu/blob/master/basic.zip?raw=true
unzip effects.zip?raw=true -d ~/.config/obs-studio/
