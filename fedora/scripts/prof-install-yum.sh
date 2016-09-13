#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/libmesode.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

ARCH=`arch`
yum -y install git
yum -y install gcc autoconf automake cmake autoconf-archive
yum -y install openssl-devel.$ARCH expat-devel.$ARCH ncurses-devel.$ARCH  glib2-devel.$ARCH libnotify-devel.$ARCH libcurl-devel.$ARCH libXScrnSaver-devel.$ARCH libotr-devel.$ARCH readline-devel.$ARCH libtool libuuid-devel.$ARCH gpgme-devel.$ARCH gtk2-devel.$ARCH
yum -y install python-devel

mkdir projects-git
cd projects-git

install_libmesode --prefix=/usr
install_cmocka
/sbin/ldconfig

install_profanity
