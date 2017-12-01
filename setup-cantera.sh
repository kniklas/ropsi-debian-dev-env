#!/bin/bash

# Get dependencies
sudo apt-get install g++ python scons libboost-all-dev libsundials-serial-dev \
	subversion sphinx-common cython python-dev python-numpy python-numpy-dev \
	python3-numpy cython3 cython

# Required for building Python modules
# python-dev 
# python-numpy 
# python-numpy-dev

CANTERA_VER=cantera_2_2
CANTERA_VER_GIT=2.2
	
# Installation
mkdir -p ~/src
#mkdir -p /home/$USER/cantera_2_0
mkdir -p /home/$USER/$CANTERA_VER
cd ~/src

# Install PIP
wget https://bootstrap.pypa.io/get-pip.py
sudo python get-pip.py

# Install Most recent sphinx and dependencies (required for documentation)
sudo pip Sphinx
sudo pip 3to2
sudo easy_install -U pygments
sudo easy_install -U pyparsing
sudo easy_install sphinxcontrib-doxylink
sudo easy_install sphinxcontrib-matlabdomain

# Install Cantera
git clone https://github.com/Cantera/cantera.git
cd cantera
git checkout $CANTERA_VER_GIT

# use below command to see available configuration options
#scons help | less

# Install - apply specifc path depending on version
#scons build prefix=/home/$USER/cantera_2_0 sphinx_docs=yes
scons build prefix=/home/$USER/$CANTERA_VER sphinx_docs=yes python_package=full python3_package=y
scons test
sudo scons install

# NOTE - MODULES
# ==============
# python3_package=y might cause problems - see issue: #36
# In this case it is not required to load setup_cantera, but follow solution from #36
# i.e. copy as root libs to respective /usr/lib python folders. Consult ticket #36
# for important details!

# NOTE - PYTHON SAMPLES
# =====================
# ~/src/cantera/interfaces/cython/cantera/examples

# *** AFTER THE INSTALLATION - EXAMPLE MESSAGE ***
#
# Cantera has been successfully installed.
# 
# File locations:
# 
# applications   		 /home/kamil/cantera_2_2/bin
# library files  		 /home/kamil/cantera_2_2/lib
# C++ headers    		 /home/kamil/cantera_2_2/include
# samples        		 /home/kamil/cantera_2_2/share/cantera/samples
# data files     		 /home/kamil/cantera_2_2/share/cantera/data
# Python 2 package (cantera) 	 /home/kamil/cantera_2_2/lib/python2.7/site-packages
# Python 2 samples           	 /home/kamil/cantera_2_2/lib/python2.7/site-packages/cantera/examples
# Python 3 package (cantera) 	 /home/kamil/cantera_2_2/lib/python3.4/site-packages
# Python 3 samples           	 /home/kamil/cantera_2_2/lib/python3.4/site-packages/cantera/examples
# setup script     		 /home/kamil/cantera_2_2/bin/setup_cantera
# 
# The setup script configures the environment for Cantera. It is
# recommended that you run this script by typing:
# 
#     source /home/kamil/cantera_2_2/bin/setup_cantera
# 
#     before using Cantera, or else include its contents in your shell
#     login script.

# !!! NOTE - MODULES !!!
# ======================
# python3_package=y might cause problems - see issue: #36
# try to apply `setup-ropsi.sh` or eventually consult issue #36
