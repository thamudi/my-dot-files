#!/bin/bash

echo "====================================="
echo "NOTE: Please check the README.md installation before you run this script"
echo "====================================="

read -p "Do you want to install dependencies (y/n)? " answer
case ${answer:0:1} in
y | Y)
  echo 'Installing dependencies using yay package manager'
  yay -S $(grep -v '^#' arch-pkglist.txt | xargs)
  ;;
*)
  echo 'Skipping ...'
  ;;
esac

echo "====================================="
echo 'Moving the dot files into the main directory'
echo "====================================="

cp -r ./dotfiles/{.,} ~

echo "====================================="
echo 'Moving the scripts files into the zsh dir'
echo "====================================="

mkdir -p ~/.zsh/scripts

cp -r ./scripts/{.,} ~/.zsh/scripts

source ~/.zshrc # source the zshrce files

# git the vim plug installed
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'PlugInstall | vim' # install the vim plugins

echo 'Done!'
