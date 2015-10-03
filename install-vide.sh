#!/bin/bash

echo
echo " Making ~/.vide dirs and installing pathogen ..."
mkdir -p ~/.vide/autoload ~/.vide/bundle
curl -LSso ~/.vide/autoload/pathogen.vim https://tpo.pe/pathogen.vim
echo
echo " Installing needed bundles ..."
cd ~/.vide/bundle
git clone https://github.com/vim-scripts/bash-support.vim
git clone https://github.com/kien/ctrlp.vim
git clone https://github.com/Yggdroot/indentLine
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/ervandew/supertab
git clone https://github.com/scrooloose/syntastic
git clone https://github.com/vim-scripts/taglist.vim
git clone https://github.com/mbbill/undotree
git clone https://github.com/vim-scripts/vcscommand.vim
git clone https://github.com/bling/vim-airline
git clone https://github.com/jeetsukumaran/vim-buffergator
git clone https://github.com/bronson/vim-trailing-whitespace
#TODO bash, maximixe

echo
echo " Creating symbolic link ..."
ln -s ~/.vide ~/.vim
ln -s ~/.vide/.vimrc ~/.vimrc

echo " Done !"
