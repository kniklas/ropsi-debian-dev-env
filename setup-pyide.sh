#!/bin/sh

# This configuration file setups a Python ide related tools

# Install dependencies
# 	ctags - required for tags management in VIM
#	curl - required to download files via https (e.g. pathogen.vim)
sudo apt-get install curl ctags

# Install pathogen.vim
# Make sure there is `execute pathogen#infect()` in .vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install Powerline for VIM
cd ~/.vim/bundle
git clone https://github.com/powerline/powerline.git

# Install Powerline fonts
cd ~/git
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

# Install Power-shell tool
cd ~/git/
git clone https://github.com/milkbikis/powerline-shell.git
cd powerline-shell/
./install.py 
ln -s ~/git/powerline-shell/powerline-shell.py ~/powerline-shell.py

# Install wombat 256 colors in xterm
# Make sure to include in .vimrc correct colorscheme
mkdir -p ~/.vim/colors
cd ~/.vim/colors
wget http://www.vim.org/scripts/download_script.php?src_id=13400 -O wombat256mod.vim
wget http://www.vim.org/scripts/download_script.php?src_id=4055 -O desert256.vim
wget http://www.vim.org/scripts/download_script.php?src_id=13397 -O wombat256.vim

# Instal CtrlP search in VIM
# Make sure to configure this in .vimrc
# Make sure to run once `:helptags ~/.vim/bundle/ctrlp.vim/doc`
cd ~/.vim/bundle/
git clone https://github.com/kien/ctrlp.vim.git

# Install NERDTree
# Make sure to configure this plugin in .vimrc
# Make sure to run once `:helptags ~/.vim/bundle/nerdtree/doc`
git clone https://github.com/scrooloose/nerdtree.git

# Install NERDCommenter
# Make sure to run once `:helptags ~/.vim/bundle/nerdcommenter/doc`
git clone https://github.com/scrooloose/nerdcommenter.git
