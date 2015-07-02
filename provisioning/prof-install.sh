#!/bin/bash

set -o errtrace

error_handler()
{
        ERR_CODE=$?
        echo "Error $ERR_CODE with command '$BASH_COMMAND' on line ${BASH_LINENO[0]}. Exiting."
        exit $ERR_CODE

}

trap error_handler ERR

sudo apt-get -y install git
sudo apt-get -y install autoconf automake libtool cmake
sudo apt-get -y install libssl-dev libexpat1-dev libncursesw5-dev libglib2.0-dev libnotify-dev libcurl3-dev libxss-dev libotr5-dev libreadline-dev libgpgme11-dev uuid-dev 

mkdir projects-git
cd projects-git

git clone https://github.com/strophe/libstrophe.git
cd libstrophe
./bootstrap.sh
./configure --prefix=/usr
make
sudo make install
cd ..

wget https://cmocka.org/files/1.0/cmocka-1.0.1.tar.xz
tar -xvf cmocka-1.0.1.tar.xz
cd cmocka-1.0.1
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ..
make
sudo make install
cd ../..

# libexpect can't seem to read stdout from the profanity process when run in vagrant provisioning
#sudo apt-get -y install libmicrohttpd-dev expect-dev tcl-dev
#git clone git://github.com/boothj5/stabber.git
#cd stabber
#./bootstrap.sh
#./configure --prefix=/usr
#make
#sudo make install
#cd ..

git clone https://github.com/boothj5/profanity.git
cd profanity
./bootstrap.sh
./configure
make
make check-unit
sudo make install
