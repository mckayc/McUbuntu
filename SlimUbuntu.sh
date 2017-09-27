#!/bin/bash
# Slim Ubuntu by removing packages not needed.

#Type the following commands in the terminal to run:
#- - - - - - - - - - - - - - - - - - - -
#wget http://bit.ly/lucidubu
#chmod +x lucidubu
#sudo ./lucidubu
#- - - - - - - - - - - - - - - - - - - -

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y libreoffice* rhythmbox*

sudo apt-get clean -y
sudo apt-get autoremove -y

#Upgrade all packages
sudo apt-get upgrade -y











