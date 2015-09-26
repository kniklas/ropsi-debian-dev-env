#!/bin/bash
# Ratpoison setup

# Install dependencies
sudo apt-get install xcompmgr gcc make xorg xorg-dev xz-utils
# xcompmgr - required for transparency config
# gcc make -  required for compilation
# xorg xorg-dev - required for X dependencies
# xz-utils - required by tar gz

# Download source
mkdir -p ~/src
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

# in order to browse help on rpws use:
# perldoc /usr/local/bin/rpws
# or
# rpws help
