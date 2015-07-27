#!/bin/bash
# Ratpoison setup

# Install dependencies
sudo apt-get install \ 
	xcompmgr \ # required for transparency config
	gcc make \ # required for compilation
	xorg xorg-dev # required for X dependencies

# Donlowad source
cd ~/src
wget http://download.savannah.nongnu.org/releases/ratpoison/ratpoison-1.4.8.tar.xz
tar -xf ratpoison-1.4.8.tar.xz
cd ratpoison-1.4.8

# Install
./configure
make
sudo make install

# Perform additional configuration if required
# .xinitrc
# .ratpoisonrc
