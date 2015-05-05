#!/bin/bash

# TODO add -f parameter to this script to ignore cp -u flag

echo "     *** ATTENTION ***"
echo "This script puts config files from home to repository folder."
echo "Please accept all the changes interactively."
echo "If not sure choose not to overwrite!"
echo ""

cd ~
cp -v -i -u \
	.ratpoisonrc \
	.vimrc \
	.xinitrc \
	git/ropsi-debian-dev-env/
