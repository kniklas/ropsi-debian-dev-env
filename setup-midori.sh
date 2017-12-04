#!/bin/bash

# Install MIDORI browser
# Check http://midori-browser.org for actual version!
 
# Probably only below command is needed, if does not work, then further part

sudo apt-get install midori

# Get the dependencies (needed when 0.5.11 version was installed)
# sudo apt-get install libgcr-base-3-1 hicolor-icon-theme man-db desktop-file-utils mime-support

# Set MIDORI download file version
#MVER=midori_0.5.11-0_amd64_.deb

#echo "Downloading and Installing MIDORI VERSION:" $MVER 
#cd /tmp

#wget http://midori-browser.org/downloads/$MVER

#sudo dpkg -i $MVER
