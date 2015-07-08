#!/bin/bash

install_libstrophe()
{
    git clone https://github.com/strophe/libstrophe.git
    cd libstrophe
    ./bootstrap.sh
    ./configure --prefix=$1
    make
    make install
    cd ..
}
