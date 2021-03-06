#!/bin/bash

# TO DO:
# a) Enable parameters of this script:
# - path to get source
# - parameter of features of the compilation
# - apply right features (python module, gvim, etc.)
# b) See if there is other way to use alternatives (i.e. use vi for vim)

# Ensure there are met installation pre-conditions
sudo apt-get update
sudo apt-get install git ncurses-dev build-essential python-dev python3-dev

# Put source into home directory
mkdir -p ~/git
cd ~/git
git clone https://github.com/vim/vim.git

# Remove earlier installed VIMs
sudo apt-get remove vim-common vim-tiny vim vim-runtime vim-gui-common

# In order to remove previously compiled versions:
# make clean # - remove binary files
# make distclean # - remove configure files
# sudo make uninstall_runtime # - remove runtime files (for details see vim/src/Makefile)


# Perform installation from the source
# In Debian 8 use python lib: /usr/lib/python2.7/config-x86_64-linux-gnu
# In Debian 8 use python lib: /usr/lib/python3.4/config-3.4m-x86_64-linux-gnu/
#--with-python-config-dir=/usr/lib/python2.7/config \
#--enable-pythoninterp \
cd ~/git/vim
make clean
make distclean
./configure \
	--with-features=huge \
	--enable-python3interp \
	--with-python3-config-dir=/usr/lib/python3.4/config-3.4m-x86_64-linux-gnu/ \
	--with-compiledby="Kamil Niklasiński" \
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
