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
