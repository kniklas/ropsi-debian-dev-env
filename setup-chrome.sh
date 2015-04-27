#!/bin/bash

# Install dependencies
sudo apt-get install \
	libnspr4 \
	libnss3 \
	libappindicator1 \
	libcurl3

# Install direcfrom dwnoloaded package
cd ~
sudo dpkg -i google-chrome-stable_current_amd64.deb 
