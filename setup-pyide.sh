#!/bin/sh

# This configuration file setups a Python ide related tools

# Install dependencies
# 	ctags - required for tags management in VIM
#	curl - required to download files via https (e.g. pathogen.vim)
sudo apt-get install \
	curl \
	ctags

# Install pathogen.vim
# Make sure there is `execute pathogen#infect()` in .vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
