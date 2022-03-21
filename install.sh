#!/bin/bash

echo "====================================="
echo "NOTE: Please check the README.md installation before you run this script"
echo "====================================="

read -p "Do you want to install dependencies (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo 'Installing dependencies using yay package manager'
				yay -S $(grep -v '^#' arch-pkglist.txt | xargs)
    ;;
    * )
        echo 'Skipping ...'
    ;;
esac

echo "====================================="
echo 'Moving the dot files into the main directory'
echo "====================================="

cp -r ./dotfiles/{.,} ~ 


read -p "Do you want to source and install vim plugins (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo 'sourcing zshrc and installing plugins for vimrc'
				source ~/.zshrc
				echo 'done'
				echo 'PlugInstall | vim'
    ;;
    * )
        echo 'Skipping ...'
    		echo 'Make sure to source zshrc and run PlugInstall in vim after this for the changes to take effect'
		;;
esac

echo 'Done!'
