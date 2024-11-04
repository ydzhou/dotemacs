#!/bin/sh

EMACS_PREFIX=/opt/emacs

CC=gcc
CXX=g++

./autogen.sh
./configure --with-mailutils \
            --with-modules \
            --with-imagemagick \
            --with-native-compilation=aot \
            --with-tree-sitter \
            --with-xwidgets \
            --with-pgtk \
            --prefix=$EMACS_PREFIX

#make -j${nproc}

#sudo make install
