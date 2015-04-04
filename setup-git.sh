# Install dependencies
sudo apt-get install asciidoc autoconf libcurl4-gnutls-dev libexpat1-dev gettext libz-dev libssl-dev build-essential

# Install
cd ~/src/git/
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

# To show current config
git config --list

git --version

# In order to clone use:
# git clone https://github.com/git/git.git
