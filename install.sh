#!/bin/bash

CURRENT_DIRECTORY=`pwd`

cd ~/
ln -s $CURRENT_DIRECTORY/bash_profile.sh ./.bash_profile
ln -s $CURRENT_DIRECTORY/gvim.rc ./.gvimrc
ln -s $CURRENT_DIRECTORY/vim.rc ./.vimrc
ln -s $CURRENT_DIRECTORY/vim ./.vim
#ln -s $CURRENT_DIRECTORY/git.config ./.gitconfig
cd $CURRENT_DIRECTORY
source ~/.bash_profile
