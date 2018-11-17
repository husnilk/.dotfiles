#!/bin/bash

# After clone the files
cd ~ 

mkdir -p $HOME/.vim/colors

# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

declare -a dotfiles=(".bashrc"
	".vimrc"
	".tmux.conf"
	".vim/plugins.vim"
	".vim/keymaps.vim")

for dotfile in "${dotfiles[@]}"
do
	SOURCEFILE=$HOME/.dotfiles/$dotfile
	DESTFILE=$HOME/$dotfile

	if [ -f $DESTFILE ]; 
	then
		mv $DESTFILE $DESTFILE.bak
	fi
	ln -s $SOURCEFILE $DESTFILE
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install vim theme atom-dark
curl -fLo ~/.vim/colors/atom-dark-256.vim --create-dirs \
	https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark-256.vim


curl -fLo ~/.vim/colors/atom-dark.vim --create-dirs \
	https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim
