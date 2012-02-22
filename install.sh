#!/bin/bash

CURRENT_DIRECTORY=`pwd`

cp bash_profile.sh bash_profile.tmp
`cat bash_profile_lakitu.sh` >> bash_profile.tmp

cd ~/

rm .bash_profile
ln -s $CURRENT_DIRECTORY/bash_profile.tmp .bash_profile

rm .gitconfig
ln -s $CURRENT_DIRECTORY/git.config .gitconfig

rm .gvimrc
ln -s $CURRENT_DIRECTORY/gvim.rc .gvimrc

rm -rf .vim
ln -s $CURRENT_DIRECTORY/vim .vim

rm .vimrc
ln -s $CURRENT_DIRECTORY/vim.rc .vimrc

cd $CURRENT_DIRECTORY
source ~/.bash_profile
