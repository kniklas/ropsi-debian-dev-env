#!/bin/bash

# Install dependencies
sudo apt-get install asciidoc autoconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev build-essential

# Download Git master branch source code
mkdir -p ~/src
cd ~/src
wget https://github.com/git/git/archive/master.zip
unzip master.zip
cd ~/src/git-master/

# Install Git
sudo make prefix=/usr install install-doc install-html install-info
make configure 
./configure --prefix=/usr
make all doc
sudo make install install-doc install-html

# Setup Manually if required
# git config --global user.email <email>
# git config --global user.name <name>
# git config --system core.editor <editor>

# Follow simple rule for push (only current branch)
git config --global push.default simple

# Set aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.d difftool

# To show current config
git config --list

# Install git completion
sudo cp contrib/completion/git-completion.bash /etc/bash_completion.d/
# If above doesn't work, try:
# 	cp contrib/completion/git-completion.bash ~/.git-completion.bash
# manually add to ~/.bashrc line:
#	source ~/.git-completion.bash 
# restart shell (logout, login) if necessary
# Note: this will work only for this user!

# Enable vimdiff as difftool
git config --global diff.tool vimdiff
git config --global difftool.prompt false

# Check version
git --version
