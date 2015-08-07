# ropsi-debian-dev-env
ROPSI Linux Debian Development Environment

This repository contains setup scripts that automate deployment of development
environment for [ROPSI](https://github.com/kniklas/ROPSI)

It is assumed the environment is as *lightweight* as possible. 

# Pre-conditions

This development environment is tested under *Debian 7 Linux 64 bit* (via
VMware). It is assumed the linux is installed with minimum set of features
via network installer.

Compatibility of this deployment tool is not verified against other operating
systems and linux distributions.

# Deployment of packages

Below modules are either compiled or installed from packages - in most cases
they contain installation/compilation of the dependencies.

Deployment currently is done manually via execution of below scripts (sequence
is important!). The scripts are executed as whole or their fragments depending
on need.

* `setup-sudoers.sh` - Sudoers
* `setup-ratpoison.sh` - Ratpoison v1.4.8
* `setup-vmtools.sh` - Linux VMTools
* `setup-vim.sh` - VIM 7.4.x with updated alternatives (like vi)
* `setup-git.sh` - Git (version included in `~/src/git`)
* `setup-cantera.sh` - Cantera v2.0.2 including Sphinx html documentation
* `setup-dillo.sh` - Dillo internet browser v3.0.4.1
* `setup-midori.sh` - Midori internet browser v0.5.9-1
* `setup-chrome.sh` - Google Chrome internet browser
* `setup-pyide.sh` - Programming and Python specific plugins
* `setup-ropsi.sh` - ROPSI development specific configuration

# VIM plugins

* Pathogen.vim
* Powerline for VIM
* 256 colour syntax highlight
* CtrlP.vim
* NERDTree.vim
* NERDComment.vim
* ACK.vim
* Python-mode

# Shell extentions

* 256 colors in xterm
* Powerline shell and fonts

# Notes and considerations

## ROPSI Specific

NOTE: when path folders setting two actions need to take place:

* setting python modules paths for Cantera packages (see `setup-ropsi.sh`)
* setting CSV output files specific directory (see `setup-ropsi.sh`)

NOTE: Python-mode static code validations (e.g. pylint) finds lots of errors
that are triggered at saving of the python files. You may need to disable
pylint validations in `.vimrc` file.
