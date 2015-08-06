#!/bin/bash

# Good if X is installed earlier!!

# Install dependencies
sudo apt-get install gcc make linux-headers-$(uname -r) zx-utils
# zx-utils - required by tar gz

# sudo mkdir /mnt/cdrom
# sudo mount /dev/cdrom /mnt/cdrom
# cp /mnt/cdrom/VMwareTools-9.9.3-2759765.tar.gz ~
# tar xf VMwareTools-9.9.3-2759765.tar.gz
# cd vmware-tools-distrib
# sudo ./vmware-install.pl

# To reconfigure VMWare Tools
# sudo /usr/bin/vmware-config-tools.pl

# To check VMTools settings use:
# sudo /usr/bin/vmware-toolbox-cmd help
