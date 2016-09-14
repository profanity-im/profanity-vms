#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/libmesode.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

zypper -n in git
zypper -n in gcc automake make autoconf cmake autoconf-archive
zypper -n in gcc libopenssl-devel expat libexpat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr-devel readline-devel libtool libuuid-devel libgpgme-devel gtk2-devel
zypper -n in python-devel

mkdir projects-git
cd projects-git

install_libmesode --prefix=/usr/local
install_cmocka
/sbin/ldconfig

install_profanity
