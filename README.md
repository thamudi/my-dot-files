# my-dot-files


## Intro

A lot of the configuation was inspired and based on from [daniruiz/dotfiles](https://github.com/daniruiz/dotfiles) project

This repo basically contains my dotfiles configuation I use for my Arch-Based distro

The packages that the .zshrc depends on are listed in the [./arch-pkglist.txt](./arch-pkglist.txt)

You can manually install them or use the yay package manager as  mentioned in the file

As for vimrc you will need PlugInstall installed

## Installation 

### Manual

#### zshrc

**Step 1: Make sure you have installed the dependencies that are mentioned in the [./arch-pkglist.txt](./arch-pkglist.txt)** 

- To install the required packages run the following command

```bash
yay -S $(grep -v '^#' arch-pkglist.txt | xargs)
```
**Step 2: Copy/ Move the contents from the [./dotfiles](.dotfiles/)**

- Make sure they are placed into your `$HOME` dir or `~`

**Step 3: Srouce the .zshrc file**

```bash
source .zshrc
```

You should have everything running perfectly 

NOTE: You can re-configure the look and feel of your z-shell by running `p10k configure`
in your terminal.

#### vim

In order to work with my `.vimrc` you will need to have vim-plugins installed
Here's are the steps 

**Step 1: Install the vim-plug**
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

**Step 2: copy the ~/.vimrc file**

If you followed the previous step you should have moved it with the .zshrc, if not, move the .vimrc into your $HOME dir.

**Step 3: Open vim in your terminal and run the following command**

```bash
:PlugInstall
```
___

### Automatice (Recommended)

**Step 1: Make the install.sh executable**
```bash
chmod +x install.sh
```

**Step 2: run the install.sh**
```bash
./install.sh
```

**Step 3: profit!**
