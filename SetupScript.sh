#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo add-apt-repository ppa:pmjdebruijn/darktable-release

#Update all packages
sudo apt-get update 
sudo apt-get upgrade

#Remove Packages

#Install Packages
sudo apt-get install -y google-chrome-stable kdenlive darktable vlc synaptic nemo playonlinux gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape






