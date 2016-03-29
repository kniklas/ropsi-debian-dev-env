#!/bin/bash

# Get dependencies
sudo apt-get install g++ python scons libboost-all-dev libsundials-serial-dev \
	subversion sphinx-common cython python-dev python-numpy python-numpy-dev \
	cython

# Required for building Python modules
# cython  - from Debian 8.x package is OK
# python-dev 
# python-numpy 
# python-numpy-dev
	
# Installation
mkdir -p ~/src
cd ~/src

# Install PIP
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

# Install Most recent sphinx and dependencies (required for documentation)
sudo pip Sphinx
sudo easy_install -U pygments
sudo easy_install -U pyparsing
sudo easy_install sphinxcontrib-doxylink

# Install Cython (uncomment if newer version of cantera is required)
# sudo easy_install cython

# Install Cantera
# Download source code - uncomment specific line depending on required version
svn checkout http://cantera.googlecode.com/svn/cantera/branches/2.0/ cantera_2_0
# svn checkout http://cantera.googlecode.com/svn/cantera/branches/2.1/ cantera_2_1

# Install - apply specifc path depending on version
scons build prefix=/home/$USER/cantera_2_0 sphinx_docs=yes
scons test
scons install

# *** AFTER THE INSTALLATION - EXAMPLE MESSAGE ***
#
# Cantera has been successfully installed.
# 
# File locations:
# 
# applications      /home/kamil/cantera_2_0/bin
# library files     /home/kamil/cantera_2_0/lib
# C++ headers       /home/kamil/cantera_2_0/include/cantera
# samples           /home/kamil/cantera_2_0/share/cantera/samples
# data files        /home/kamil/cantera_2_0/share/cantera/data
# 
# Python package    /home/kamil/cantera_2_0/lib/python2.7/site-packages
# 
# setup script      /home/kamil/cantera_2_0/bin/setup_cantera
# 
# The setup script configures the environment for Cantera. It is
# recommended that you run this script by typing:
# 
#     source /home/kamil/cantera_2_0/bin/setup_cantera
# 
#     before using Cantera, or else include its contents in your shell
#     login script.

