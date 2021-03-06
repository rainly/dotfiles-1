#!/bin/bash

git submodule init
git submodule update

for dotfile in .ackrc .gdbinit .gemrc .inputrc .pryrc .railsrc .screenrc .toprc .vim .vimrc .zprofile .zshenv .zshrc
do
  rm -fr ~/$dotfile
  ln -vnfs $PWD/$dotfile ~/$dotfile
done
