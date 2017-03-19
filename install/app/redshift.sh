#!/bin/bash

# Redshift 1.11
cd /tmp
sudo apt-get install intltool geoclue geoclue-2.0 libxcb1-dev libxcb-randr0-dev libx11-dev
wget https://github.com/jonls/redshift/releases/download/v1.11/redshift-1.11.tar.xz
tar -xvf redshift-1.11.tar.xz
cd redshift-1.11/
./configure --enable-randr --enable-gui --enable-ubuntu --with-systemduserunitdir=$HOME/.config/systemd/user
make
sudo make install
