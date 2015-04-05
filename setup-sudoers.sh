#!/bin/bash

# add user to sudo group and configure sudoers
su
adduser kamil sudo
visudo

echo "in editor, below line: 'root ALL=(ALL) ALL'"
echo "add new line: 'kamil ALL=(ALL) ALL'"
echo "press CTRL-X and Y."

