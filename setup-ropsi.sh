#!/bin/sh

# Configure ROPSI development environment

# Copy Cantera python package to default python packages folder
CPP1=~/cantera_2_2/lib/python2.7/site-packages/*
PP1=/usr/lib/python2.7/dist-packages/

CPP2=~/cantera_2_2/lib/python3.4/site-packages/*
PP2=/usr/lib/python3/dist-packages/

echo "Copying package from:" $CPP1 "to: " $PP1
sudo cp -r $CPP1 $PP1

echo "Copying package from:" $CPP2 "to: " $PP2
sudo cp -r $CPP2 $PP2

# Alternatively invoke in start.py file: 
# import sys
# sys.path.append('/home/kamil/cantera_2_2/lib/python2.7/site-packages')
# or
# sys.path.append('/home/kamil/cantera_2_2/lib/python3.4/site-packages')

# Keep in mind to set path for .csv output files
# file: Engine/Configuration/Defaults.py
# fPath = 'path'
