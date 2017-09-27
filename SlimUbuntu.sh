#!/bin/bash
# Slim Ubuntu by removing packages not needed.

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get remove --purge libreoffice* rhythmbox*

sudo apt-get clean
sudo apt-get autoremove

#Upgrade all packages
sudo apt-get upgrade -y











