#!/bin/bash

. /tmp/errhandler.sh
. /tmp/libstrophe.sh
. /tmp/cmocka.sh
. /tmp/profanity.sh

zypper -n in git
zypper -n in gcc automake make autoconf cmake
zypper -n in gcc libopenssl-devel expat libexpat-devel ncurses-devel glib2-devel libnotify-devel libcurl-devel libXScrnSaver-devel libotr-devel readline-devel libtool libuuid-devel libgpgme-devel

mkdir projects-git
cd projects-git

install_libstrophe /usr
install_cmocka
/sbin/ldconfig

install_profanity
