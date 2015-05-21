#!/bin/bash
 
# TODO add -f parameter to this script to ignore cp -u flag. This flag is required to force update newer file by older file.

echo "     *** ATTENTION ***"
echo "This script puts config files from repository to home folder."
echo "Please accept all the changes interactively."
echo "If not sure choose not to overwrite!"
echo ""

cd ~/git/ropsi-debian-dev-env/
cp -v -i -u \
	.ratpoisonrc \
	.vimrc \
	.xinitrc \
	.bashrc \
	~
