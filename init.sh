#!/bin/bash

OLD_CONFIG_DIR=~/.old_configs
DONFIG_DIR=~/.donfig

mkdir $OLD_CONFIG_DIR
mv ~/.bashrc $OLD_CONFIG_DIR
mv ~/.bash_aliases $OLD_CONFIG_DIR
mv ~/.vim $OLD_CONFIG_DIR
mv ~/.vimrc $OLD_CONFIG_DIR

ln -s $DONFIG_DIR/bashrc ~/.bashrc
ln -s $DONFIG_DIR/bash_aliases ~/.bash_aliases
ln -s $DONFIG_DIR/vim ~/.vim

git submodule update --init
