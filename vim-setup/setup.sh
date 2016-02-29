#!/bin/bash

cp vimrc ~/.vimrc
vim +PluginInstall +qall

(
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
)
