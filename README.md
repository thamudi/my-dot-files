# my-dot-files


## Intro

A lot of the configuation was inspired and based on from [daniruiz/dotfiles](https://github.com/daniruiz/dotfiles) project

This repo basically contains my dotfiles configuation I use for my Arch-Based distro

The packages that the .zshrc depends on are listed in the [./arch-pkglist.txt](./arch-pkglist.txt)

You can manually install them or use the yay package manager as  mentioned in the file

As for vimrc you will need PlugInstall installed

## Installation 

### Manual

### zshrc

To install the required packages to use `.zshrc` run the following command

```bash
yay -S $(grep -v '^#' arch-pkglist.txt | xargs)
```

Move or copy the content from [./dotfiles] into your $HOME dir

If everything was correct you should be able to source `.zshrc` without any errors.

You should have everything running perfectly 

NOTE: You can re-configure the look and feel of your z-shell by running `p10k configure`
in your terminal.

### vim

In order to work with my `.vimrc` you will need to have vim-plugins installed
Here's are the steps 

**Step 1: Install the vim-plug**
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Step 2: copy the ~/.vimrc file**

If you followed the previous step you should have moved it with the .zshrc, if not, move the .vimrc into your $HOME dir.

**Step 3: Open vim in your terminal and run the following command**

```
:PlugInstall
```
