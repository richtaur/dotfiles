#!/bin/bash

CURRENT_DIRECTORY=`pwd`
cd ~/

rm .bash_profile
ln -s $CURRENT_DIRECTORY/bash_profile.sh .bash_profile

rm .gvimrc
ln -s $CURRENT_DIRECTORY/gvim.rc .gvimrc

rm -rf .vim
ln -s $CURRENT_DIRECTORY/vim .vim

rm .vimrc
ln -s $CURRENT_DIRECTORY/vim.rc .vimrc

cd $CURRENT_DIRECTORY
source ~/.bash_profile
