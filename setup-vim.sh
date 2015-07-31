#!/bin/bash

# TO DO:
# a) Enable parameters of this script:
# - path to get source
# - parameter of features of the compilation
# - apply right features (python module, gvim, etc.)
# b) See if there is other way to use alternatives (i.e. use vi for vim)

# Ensure there are met installation pre-conditions
sudo apt-get install ncurses-dev build-essential mercurial python-dev

# Put source into home directory
mkdir -p ~/src
cd ~/src
hg clone https://vim.googlecode.com/hg/ vim

# Remove earlier installed VIMs
sudo apt-get remove vim-common vim-tiny

# Perform installation from the source
# In Debian 8 use python lib: /usr/lib/python2.7/config-x86_64-linux-gnu
cd vim/src
make distclean
./configure \
	--with-features=huge \
	--enable-pythoninterp \
	--with-python-config-dir=/usr/lib/python2.7/config \
	--enable-fail-if-missing
make
sudo make install

# Update alternatives (e.g. vi as vim)
# Read 'man update-alternatives'
#sudo update-alternatives --install /usr/bin/vim editor /usr/local/bin/vim 100
#sudo update-alternatives --install /usr/bin/vi editor /usr/local/bin/vim 200 
#
#Run: (after update-alternatives)
#     select-editor (interactively select vim)

# OLD version:
#sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
#sudo update-alternatives --set vi /usr/bin/vim
