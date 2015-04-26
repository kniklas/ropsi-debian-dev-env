#!/bin/bash

# Install MIDORI browser
# Check http://midori-browser.org for actual version!

# Set MIDORI download file version
MVER=midori_0.5.9-1_amd64_.deb

echo "Downloading and Installing MIDORI VERSION:" $MVER 
cd /tmp

wget http://midori-browser.org/downloads/$MVER
#wget http://midori-browser.org/downloads/midori_0.5.9-1_amd64_.deb

sudo dpkg -i $MVER.deb
