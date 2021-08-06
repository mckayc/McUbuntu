#!/bin/bash
# Setup script for installing all my favorite software.

#-------------------------------------------------------
#---------------------INSTRUCTIONS----------------------
#Install Google Chrome manually so that you have a browser to setup while everything else is downloading
# - - - - - 
#In terminal type/paste in the following command:
# wget -O UbuntuSetupScript.sh http://bit.ly/mckayubuntu ; chmod +x UbuntuSetupScript.sh ; ./UbuntuSetupScript.sh
#-------------------------------------------------------

#- - - - - User Input Section - - - - - - - 
read -r -p "Would you like to install Google Chrome? y=yes n=no: " chrome
read -r -p "Would you like to install additional Multimedia players? y=yes n=no: " mediaplayers
read -r -p "Would you like to install additional tools? y=yes n=no: " tools
read -r -p "Would you like to install some popular Games? y=yes n=no: " games
read -r -p "Would you like to install photo and video editing tools? y=yes n=no: " multimediaediting
# - - - - End User Input Section - - - - - -

if [ $chrome == "y" ];
    then
    echo "Installing Google Chrome."
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
    sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt update
    sudo apt install google-chrome-stable
fi
    echo "You have chosen not to install Chrome."

if [ $multimediaediting == "y" ];
    then
    echo "Installing Multimedia Editing Tools."
    sudo apt install -y kdenlive 
    sudo apt install -y darktable 
    sudo apt install -y gimp 
    sudo apt install -y gimp-data-extras 
    sudo apt install -y gimp-gmic 
    sudo apt install -y gimp-plugin-registry 
    sudo apt install -y inkscape 
    sudo apt install -y blender 
    sudo apt install -y audacity 
    sudo apt install -y lmms
    sudo apt install -y obs-studio 
fi
    echo "You have chosen not to install Multimedia Editing Tools."

if [ $tools == "y" ];
    then
    echo "Installing additional tools."
    sudo apt install -y synaptic 
    sudo apt install -y qbittorrent
    sudo apt install -y speedcrunch 
fi
    echo "You have chosen not to install additional tools."

if [ $mediaplayers == "y" ];
    then
    echo "Installing Multimedia Players."
    sudo apt install -y vlc
fi
    echo "You have chosen not to install additional Multimedia Players."

if [ $games == "y" ];
    then
    echo "Installing more Games."
    sudo apt install -y 0ad
    sudo apt install -y supertuxkart
    sudo apt install -y neverball
    sudo apt install -y neverputt
    sudo apt install -y alien-arena
    sudo apt install -y hedgewars
    sudo apt install -y teeworlds
    sudo apt install -y astromenace
fi
    echo "You have chosen not to install additional games."




#  
# 
# 
#  
#  
# sudo apt install -y openvpn 
# sudo apt install -y network-manager-openvpn 
# sudo apt install -y solaar 
# sudo apt install -y playonlinux 
# sudo apt install -y ffmpeg 
# 
# sudo apt install -y mirage 
# sudo apt install -y hydrogen 
# sudo apt install -y exfat-utils 
# sudo apt install -y gparted 
# sudo apt install -y rar 
# sudo apt install -y unrar-free 
# sudo apt install -y woeusb 
# sudo apt install -y vlc-plugin-fluidsynth 
# sudo apt install -y fluid-soundfont-gs 
# sudo apt install -y fluid-soundfont-gm 
# 
# sudo apt install -y handbrake 
# sudo apt install -y freecad 
# sudo apt install -y unetbootin 
# sudo apt install -y ubuntu-make 
# sudo apt install -y grsync 
# sudo apt install -y git


# #Add PPA Repositories

# # Install Etcher (USB Disk Creation Software)
# #echo "deb https://dl.bintray.com/resin-io/debian stable etcher" | sudo tee /etc/apt/#sources.list.d/etcher.list
# #sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 379CE192D401AB61

# # Add additional Repositories

# #Kdenlive
# sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
# #OBS Studio
# sudo add-apt-repository ppa:obsproject/obs-studio -y
# #Unetbootin - Create live USBs
# sudo add-apt-repository ppa:gezakovacs/ppa -y
# #WoeUSB - Create live USBs for Windows
# sudo add-apt-repository ppa:nilarimogard/webupd8 -y


# #sudo add-apt-repository ppa:graphics-drivers/ppa -y
# #sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
# #sudo add-apt-repository ppa:flexiondotorg/youtube-dl-gui -y
# #sudo add-apt-repository ppa:wireshark-dev/stable -y
# #sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make -y
# #sudo add-apt-repository ppa:rikmills/latte-dock -y


# #Update all packages
# sudo apt update 

# #Remove Packages
# sudo apt purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

# #Install Packages - Need to do this line at a time so it does not break
# sudo apt install -y kdenlive 
# sudo apt install -y darktable 
# sudo apt install -y vlc 
# sudo apt install -y synaptic 
# sudo apt install -y gimp 
# sudo apt install -y gimp-data-extras 
# sudo apt install -y gimp-gmic 
# sudo apt install -y gimp-plugin-registry 
# sudo apt install -y inkscape 
# sudo apt install -y qbittorrent 
# sudo apt install -y blender 
# sudo apt install -y audacity 
# sudo apt install -y lmms 
# sudo apt install -y openvpn 
# sudo apt install -y network-manager-openvpn 
# sudo apt install -y solaar 
# sudo apt install -y playonlinux 
# sudo apt install -y ffmpeg 
# sudo apt install -y obs-studio 
# sudo apt install -y mirage 
# sudo apt install -y hydrogen 
# sudo apt install -y exfat-utils 
# sudo apt install -y gparted 
# sudo apt install -y rar 
# sudo apt install -y unrar-free 
# sudo apt install -y woeusb 
# sudo apt install -y vlc-plugin-fluidsynth 
# sudo apt install -y fluid-soundfont-gs 
# sudo apt install -y fluid-soundfont-gm 
# sudo apt install -y speedcrunch 
# sudo apt install -y handbrake 
# sudo apt install -y freecad 
# sudo apt install -y unetbootin 
# sudo apt install -y ubuntu-make 
# sudo apt install -y grsync 
# sudo apt install -y git

# #Not working for some reason:
# # sudo apt install -y shutter etcher-electron youtube-dlg

# #Upgrade all packages
# sudo apt upgrade -y

# #Install Google WebFonts
# curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash

# # -----------------------------------------
# #Install things that need confirmation last
  
# sudo apt install -y qjackctl 
# sudo apt install -y virtualbox
# sudo apt install -y virtualbox-ext-pack
# sudo apt install -y virtualbox-guest-additions-iso
# sudo apt install -y wireshark


# #Install VS Code via Umake
# sudo umake web visual-studio-code

# #------------------------------------------
# #System Tweaks

# #Increase Swap File Size to 16GB
# sudo swapoff /swapfile
# sudo rm  /swapfile
# sudo dd if=/dev/zero of=/swapfile bs=1M count=16384
# sudo chmod 600 /swapfile
# sudo mkswap /swapfile
# sudo swapon /swapfile

# #------------------------------------------
# #Clone Git Repository
# git clone https://github.com/mckayc/McUbuntu


# #------------------------------------------
# #Copy configs from previous setup (backed up daily to Github repository)

# # Copy over KDE Custom shortcuts
# cp ~/.kde/share/config/kdeglobals ~/.kde/share/config/kdeglobals.bak
# cp ~/McUbuntu/kdeglobals ~/.kde/share/config/kdeglobals
# # Not work yet; next time try: Adopt ~/.config/kglobalshortcutsrc to your needs - || Force kglobalaccel (apparently, responsible for the global shortcuts) to quit and restart: kquitapp kglobalaccel && sleep 2s && kglobalaccel5&
# # Remove Alt click Settings>Window Management>Window Behavior> Modifier Key

# # Copy over Darktable Styles - Copy to the Downloads folder so I can manually import them - - Need to modify this so it makes the folder first
# mkdir ~/Downloads/darktable/
# cp -a ~/McUbuntu/styles/ ~/Downloads/darktable/styles/ 

# # Copy over Kdenlive effects -  - Kdenlive has to be open first before this will work
# mkdir ~/.local/share/kdenlive/
# cp -a ~/McUbuntu/effects/ ~/.local/share/kdenlive/effects/ 
# # Copy over OBS basic
# cp -a ~/McUbuntu/basic/ ~/.config/obs-studio/basic/ 

# #Store GIT credentials
# git -C ~/McUbuntu/ config credential.helper store

# #------------------------------------------
# #Setup Cron Jobs 

# #Copy files to Git repository at 8:20 pm Every Day

# #KDE Global Hotkeys
# crontab -l | { cat; echo "20 20 * * * cp ~/.kde/share/config/kdeglobals ~/McUbuntu/"; } | crontab -
# #Darktable Styles
# crontab -l | { cat; echo "20 20 * * * cp -a ~/.config/darktable/styles/ ~/McUbuntu/"; } | crontab -
# #Kdenlive Effects
# crontab -l | { cat; echo "20 20 * * * cp -a ~/.local/share/kdenlive/effects/ ~/McUbuntu/"; } | crontab -
# #OBS basic (profiles and scenes)
# crontab -l | { cat; echo "20 20 * * * cp -a ~/.config/obs-studio/basic/ ~/McUbuntu/"; } | crontab -

# #Push to Github repository at 8:25 pm Every Day

# crontab -l | { cat; echo "25 20 * * * git -C ~/McUbuntu/ add --all; git -C ~/McUbuntu/ commit -m "Daily backed-up on `date +'%Y-%m-%d %H:%M:%S'`"; git -C ~/McUbuntu/ push origin master"; } | crontab -
