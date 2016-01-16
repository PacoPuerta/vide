# Vide
Vide
========

V(im)ide for bash shell
========

Features
========

* Easy call all panels
* Shell support
* git and subversion support
* Auto-completetion
* Auto-indent
* Unchanged vim commands
* Fuzzy search

Requirements
=========
Optional, but recommended, is to install ctags.

Install
=========
Backup your **~/.vimrc** and/or your **~/.vim** dir.

    mkdir ~/.vide
    cd ~/.vide
    git clone git://github.com/PacoPuerta/vide/ .
    bash install-vide.sh

Upgrade
=======

    git pull
    git submodule init
    git submodule update

Usage
=====

* **File browser panel**: **\<F2\>**
* **Buffer browser panel**: **\<F3\>**
* **Tags browser panel**: **\<F4\>**
* **Undos browser panel**: **\<F5\>**
* **Auto-complete**: **\<Tab\>** in "Insert mode" while writing
* **Fuzzy search**: **\<C-p\>**, select the file and [select file](#selecting-files)
* **Git/subversion**: **\<,c[...]\>**, see full commands options with :map
* **Bash support**: **\<;[...]\>**, see full commands options with :map
* **Fix whitespaces**: **\<F6\>**
* **Auto indent**: **\<F7\>**

Vim quick info
==============
* Enter **Insert mode** with **i** to edit text
* In "Normal mode" press **:** to enter into **Command-line mode**
* **Navigate through windows** using **\<C-w\> and \<Up\>, \<Down\>, \<Left\> or \<Right\>** depending on where is the window you want to focus
* **Create a new file** splitting the current window **:sp /path/to/new/file** horizontally, and **:vsp /path/to/new/file** vertically, **in "Command-line mode"**

Credits
======================
All of the project features are part of different plugins:

* https://github.com/vim-scripts/bash-support.vim
* https://github.com/kien/ctrlp.vim
* https://github.com/Yggdroot/indentLine
* https://github.com/scrooloose/nerdtree
* https://github.com/ervandew/supertab
* https://github.com/scrooloose/syntastic
* https://github.com/majutsushi/tagbar
* https://github.com/mbbill/undotree
* https://github.com/vim-scripts/vcscommand.vim
* https://github.com/bling/vim-airline
* https://github.com/jeetsukumaran/vim-buffergator
* https://github.com/bronson/vim-trailing-whitespace
* https://github.com/easymotion/vim-easymotion
* https://tpo.pe/pathogen.vim

