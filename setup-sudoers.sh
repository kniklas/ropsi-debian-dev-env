#!/bin/bash

# add user to sudo group and configure sudoers
su
apt-get install sudo
adduser kamil sudo

echo "in editor, below line: 'root ALL=(ALL) ALL'"
echo "add new line: 'kamil ALL=(ALL) ALL'"
echo "press CTRL-X and Y."

visudo
