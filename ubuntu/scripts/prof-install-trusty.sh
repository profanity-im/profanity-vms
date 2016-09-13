#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

apt-get -y install git
apt-get -y install autoconf automake libtool cmake
apt-get -y install libssl-dev libexpat1-dev libncursesw5-dev libglib2.0-dev libnotify-dev libcurl3-dev libxss-dev libotr5-dev libreadline-dev libgpgme11-dev uuid-dev 

mkdir projects-git
cd projects-git

install_libstrophe --prefix=/usr
install_cmocka

install_profanity

