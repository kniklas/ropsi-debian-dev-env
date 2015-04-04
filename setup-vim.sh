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
cd ~
hg clone https://vim.googlecode.com/hg/ vim

# Remove earlier installed VIMs
sudo apt-get remove vim-common vim-tiny

# Perform installation from the source
cd vim/src
make distclean
./configure \
	--with-features=huge \
	--enable-pythoninterp \
	--with-python-config-dir=/usr/lib/python2.7/config \
	--enable-fail-if-missing
make
sudo make install

# update alternatives (e.g. vi as vim)
udo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim
