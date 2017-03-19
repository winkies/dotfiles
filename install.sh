#!/bin/bash

# Emacs 25.5.1

sudo apt-get update
sudo apt-get install build-essential
sudo apt-get build-dep emacs24
wget https://ftp.gnu.org/gnu/emacs/emacs-25.1.tar.gz ~/Download
cd ~/Downloads && tar -xf emacs-25.1.tar.* && cd emacs-25.1
./configure
make
sudo make install


# i3 4.13
sudo su
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt-get install i3
exit

# Feh, dunst and scrot
sudo apt-get install feh dunst scrot

# Latex
sudo apt-get install texlive-full
