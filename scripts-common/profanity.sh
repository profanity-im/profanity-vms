#!/bin/bash

install_profanity()
{
    git clone https://github.com/boothj5/profanity.git
    cd profanity
    ./bootstrap.sh
    ./configure
    make
    make check-unit
    make install
}
