#!/bin/sh

EMACS_PREFIX=/opt/emacs

CC=gcc
CXX=g++

./autogen.sh
./configure --with-mailutils \
            --with-imagemagick \
            --with-json \
            --with-native-compilation=aot \
            --with-tree-sitter \
            --with-xwidgets \
            --with-ns \
            --prefix=$EMACS_PREFIX

#make -j${nproc}

#sudo make install
