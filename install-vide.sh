#!/bin/bash

echo
echo " Making ~/.vide dirs and installing pathogen ..."
mkdir -p ~/.vide/autoload ~/.vide/bundle
curl -LSso ~/.vide/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo
echo " Installing needed bundles ..."
cd ~/.vide/
echo
git submodule init
git submodule update

echo
echo " Creating symbolic link ..."
ln -s ~/.vide ~/.vim
ln -s ~/.vide/.vimrc ~/.vimrc

echo
echo " Done !"
