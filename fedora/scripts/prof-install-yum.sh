#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

ARCH=`arch`
yum -y install git
yum -y install gcc autoconf automake cmake
yum -y install openssl-devel.$ARCH expat-devel.$ARCH ncurses-devel.$ARCH  glib2-devel.$ARCH libnotify-devel.$ARCH libcurl-devel.$ARCH libXScrnSaver-devel.$ARCH libotr3-devel.$ARCH readline-devel.$ARCH libtool libuuid-devel.$ARCH gpgme-devel.$ARCH

mkdir projects-git
cd projects-git

install_libstrophe /usr
install_cmocka
/sbin/ldconfig

install_profanity
