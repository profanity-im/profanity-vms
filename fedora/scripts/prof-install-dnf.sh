#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/libmesode.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

dnf -y install git wget
dnf -y install gcc autoconf automake cmake make m4 autoconf-archive
dnf -y install openssl-devel expat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr-devel readline-devel libtool libuuid-devel gpgme-devel gtk2-devel
dnf -y install python-devel

mkdir projects-git
cd projects-git

install_libmesode /usr
install_cmocka
/sbin/ldconfig

install_profanity
