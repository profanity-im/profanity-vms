#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/libmesode.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

yum -y install epel-release
yum -y install git
yum -y install gcc autoconf automake cmake autoconf-archive
yum -y install openssl-devel expat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr-devel readline-devel libtool libuuid-devel gpgme-devel gtk2-devel
yum -y install python-devel

mkdir projects-git
cd projects-git

install_libmesode --libdir=/lib64
install_cmocka
/sbin/ldconfig

install_profanity
