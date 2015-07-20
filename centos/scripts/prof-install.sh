#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

yum -y install epel-release
yum -y install git
yum -y install gcc autoconf automake cmake
yum -y install openssl-devel expat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr-devel readline-devel libtool libuuid-devel gpgme-devel

mkdir projects-git
cd projects-git

install_libstrophe /usr
install_cmocka
/sbin/ldconfig

install_profanity
