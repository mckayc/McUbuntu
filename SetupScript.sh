#!/bin/bash
# Setup script for installing all my favorite software.

#Add PPA Repositories
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
sudo add-apt-repository ppa:pmjdebruijn/darktable-release -y
sudo add-apt-repository ppa:peterlevi/ppa -y

#Update all packages
sudo apt-get update 

#Remove Packages
sudo apt-get purge -y rhythmbox transmission-gtk transmission-common totem totem-common totem-plugins

#Install Packages
sudo apt-get install -y google-chrome-stable kdenlive darktable vlc synaptic nemo playonlinux gimp gimp-data-extras gimp-gmic gimp-plugin-registry inkscape virtualbox virtualbox-ext-pack virtualbox-guest-additions-iso qbittorrent variety variety-slideshow blender audacity lmms openvpn network-manager-openvpn-gnome

#Upgrade all packagesi
sudo apt-get upgrade -y



#Install Google WebFonts
sudo apt-get install -y mercurial

# written by Simon <simonjwiles@gmail.com>
# inspired by a script written by Michalis Georgiou <mechmg93@gmail.com>
#   and modified by Andrew http://www.webupd8.org <andrew@webupd8.org>,
#   described at
#   http://www.webupd8.org/2011/01/automatically-install-all-google-web.html
#
#  (but completely re-written)
#

HGROOT="https://googlefontdirectory.googlecode.com/hg/";
FONTDIR="/usr/share/fonts/truetype/google-fonts";

set -e;

exists() { which "$1" &> /dev/null ; }

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (i.e. with sudo)!" 1>&2;
    exit 1;
fi

if ! exists hg ; then
    echo "Mercurial is required (hint: sudo apt-get install mercurial)!" 1>&2;
    exit 1;
fi

mkdir -p "$FONTDIR";

TMPDIR=$(mktemp -d);
trap 'rm -rf "$TMPDIR"' EXIT INT QUIT TERM;

echo -n "Getting data from GoogleCode Repository... "
hg clone $HGROOT $TMPDIR > /dev/null;
if [ $? != 0 ]; then
    echo "Couldn't get data from GoogleCode Repository!  Aborting!" 1>&2;
    exit 1;
fi
echo "done!"

echo -n "Installing fonts... "
find $TMPDIR/ -name '*.ttf' -exec install -m644 {} "$FONTDIR" \;
echo "done!"

echo "Updating font cache... "
fc-cache -fvs "$FONTDIR";

echo "All done!"





