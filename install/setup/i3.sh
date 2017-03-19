#!/bin/bash

# i3 4.13
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt-get install i3
exit

# Feh, dunst and scrot
sudo apt-get install feh dunst scrot hsetroot
