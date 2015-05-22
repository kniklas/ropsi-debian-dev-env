# ropsi-debian-dev-env
ROPSI Linux Debian Development Environment

This repository contains setup scripts that automate deployment of development
environment for [ROPSI](https://github.com/kniklas/ROPSI)

It is assumed the environment is as *lightweight* as possible. 

# Pre-conditions

This development environment is tested under Debian 7 Linux 64 bit (via
VMware). It is assumed the linux is installed with minimum set of features
via network installer.

Compatibility of this deployment tool is not verified against other linux
distributions.

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
* `setup-git.sh` - Git (version included in `~/src/git`
* `setup-cantera.sh` - Cantera v2.0.2 including Sphinx html documentation
* `setup-dillo.sh` - Dillo internet browser v3.0.4.1
* `setup-midori.sh` - Midori internet browser v0.5.9-1
* `setup-chrome.sh` - Google Chrome internet browser
* `setup-pyide.sh` - Programming and Python specific plugins
