# ROPSI Development Environment - Release Notes

## v0.1.0 (2015-08-15)

It is initial version of the development environment configuration files. Used on VMWare Player (7.x)

### Key features

* Verified on Debian 7 64bit (Linux 3.2.0-4-amd64 #1 SMP Debian 3.2.63-2+deb7u1 x86_64 GNU/Linux)
* ROPSI source (tested with Python 2.7.x)
* Sudoers
* X.Org X Server 1.12.4 (package) 
* Ratpoison v1.4.8 (compiled)
* xTerm (278) from package
* VMware Tools v9.9.2 (downloaded)
* Python 2.7.3 and 3.2.3 installed from package
* Vim compiled (v7.4+) with Python 3 dynamic support and configured 256 color schemes
* Vim plugins: Ctrl-P, Python-Mode, Pathogen, Powerline, NERDTree, NERDComment, ACK.VIM
* Powershell
* Powerline fonts (used SourceCodePro v1.017)
* Cantera 2.0 (in separate folder)
* Cython (version compatible with newever versions of Cantera)
* Midori v0.5.8 (installed from downloaded package)
* Chrome v42.0.2311.90 (installed from downloaded package)
* Dillo v3.0.4.1 (installed from source)
* Git compiled (v2.4+) along with some aliases
* And many other dependencies required for compilation or installation via apt-get

### Known issues

* Midori consumes 100% CPU and cannot paste between Midori and terminal
* Blinking screen in VIM - each type keyboard stroke, the screen refreshes 
