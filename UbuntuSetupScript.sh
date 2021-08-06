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
# Install Google Chrome?
read -r -p "Would you like to install Google Chrome? y=yes n=no: " chrome
# Install additional PPAs?
ppa=n
# - - - - End User Input Section - - - - - -

if ($chrome = "y")
    then
    echo "Installing Google Chrome."
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
    sudo sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
    sudo apt-get update
    sudo apt-get install google-chrome-stable
fi
    echo "You have chosen not to install Chrome."


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
# sudo apt-get update 

# #Remove Packages
# sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins amarok dragonplayer

# #Install Packages - Need to do this line at a time so it does not break
# sudo apt-get install -y kdenlive 
# sudo apt-get install -y darktable 
# sudo apt-get install -y vlc 
# sudo apt-get install -y synaptic 
# sudo apt-get install -y gimp 
# sudo apt-get install -y gimp-data-extras 
# sudo apt-get install -y gimp-gmic 
# sudo apt-get install -y gimp-plugin-registry 
# sudo apt-get install -y inkscape 
# sudo apt-get install -y qbittorrent 
# sudo apt-get install -y blender 
# sudo apt-get install -y audacity 
# sudo apt-get install -y lmms 
# sudo apt-get install -y openvpn 
# sudo apt-get install -y network-manager-openvpn 
# sudo apt-get install -y solaar 
# sudo apt-get install -y playonlinux 
# sudo apt-get install -y ffmpeg 
# sudo apt-get install -y obs-studio 
# sudo apt-get install -y mirage 
# sudo apt-get install -y hydrogen 
# sudo apt-get install -y exfat-utils 
# sudo apt-get install -y gparted 
# sudo apt-get install -y rar 
# sudo apt-get install -y unrar-free 
# sudo apt-get install -y woeusb 
# sudo apt-get install -y vlc-plugin-fluidsynth 
# sudo apt-get install -y fluid-soundfont-gs 
# sudo apt-get install -y fluid-soundfont-gm 
# sudo apt-get install -y speedcrunch 
# sudo apt-get install -y handbrake 
# sudo apt-get install -y freecad 
# sudo apt-get install -y unetbootin 
# sudo apt-get install -y ubuntu-make 
# sudo apt-get install -y grsync 
# sudo apt-get install -y git

# #Not working for some reason:
# # sudo apt-get install -y shutter etcher-electron youtube-dlg

# #Upgrade all packages
# sudo apt-get upgrade -y

# #Install Google WebFonts
# curl https://raw.githubusercontent.com/qrpike/Web-Font-Load/master/install.sh | bash

# # -----------------------------------------
# #Install things that need confirmation last
  
# sudo apt-get install -y qjackctl 
# sudo apt-get install -y virtualbox
# sudo apt-get install -y virtualbox-ext-pack
# sudo apt-get install -y virtualbox-guest-additions-iso
# sudo apt-get install -y wireshark


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
