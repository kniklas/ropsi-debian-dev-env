# Install DILLO

# Get dependencies
cd ~/src

# Install FLTK
wget http://fltk.org/pub/fltk/1.3.3/fltk-1.3.3-source.tar.gz
tar -xvf fltk-1.3.3-source.tar.gz
cd fltk-1.3.3
make
sudo make install

# Install Dillo
# if requied remove previous dillo versions: make uninstall
wget http://www.dillo.org/download/dillo-3.0.4.1.tar.bz2
tar -xvf dillo-3.0.4.1.tar.bz2
cd dillo-3.0.4.1

# if required clean previous binaries: make clean
./configure
make
sudo make install
