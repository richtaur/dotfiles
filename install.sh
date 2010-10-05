#!/bin/bash

CURRENT_DIRECTORY = `pwd`

cd ~/
ln -s CURRENT_DIRECTORY/bash_profile.sh ./
ln -s CURRENT_DIRECTORY/gvim.rc ./.gvimrc
ln -s CURRENT_DIRECTORY/vim.rc ./.vimrc
ln -s CURRENT_DIRECTORY/vim ./.vim
cd CURRENT_DIRECTORY
