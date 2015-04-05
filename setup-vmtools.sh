#!/bin/bash

# Install dependencies
sudo apt-get install \
	gcc make \ # compilation dependencies
	linux-headers-$(uname -r) # required for cocnfugration

# mount cd drive
# ...

# call install on mounted drive
# ...

# To reconfigure VMWare Tools
# sudo /usr/bin/vmware-config-tools.pl

# To check VMTools settings use:
# sudo /usr/bin/vmware-toolbox-cmd help
