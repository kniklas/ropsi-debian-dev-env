#!/bin/sh

# Configure ROPSI development environment

# Copy Cantera python package to default python packages folder
CPP=~/cantera_2_0/lib/python2.7/site-packages/
PP=/usr/lib/python2.7/dist-packages/

echo "Copying package from:" $CPP "to: " $PP
sudo cp -r $CPP $PP

# Alternatively invoke in start.py file: 
# import sys
# sys.path.append('/home/kamil/cantera_2_0/lib/python2.7/site-packages')
