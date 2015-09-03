#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

dnf -y install git
dnf -y install gcc autoconf automake cmake
dnf -y install openssl-devel expat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr3-devel readline-devel libtool libuuid-devel gpgme-devel

mkdir projects-git
cd projects-git

install_libstrophe /usr
install_cmocka
/sbin/ldconfig

install_profanity
