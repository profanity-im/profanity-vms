#!/bin/bash

install_libmesode()
{
    git clone https://github.com/boothj5/libmesode.git
    cd libmesode
    ./bootstrap.sh
    ./configure --prefix=$1
    make
    make install
    cd ..
}
