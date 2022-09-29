#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
ln -sf ${BASEDIR}/vim ~/.vim

# zsh
ln -sf ${BASEDIR}/zshrc ~/.zshrc

# if [ -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ];then
	echo "installing zsh-autosuggestions..." # && 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# fi

# if [ -e ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ];then
	echo "installing zsh-syntax-highlighting..." # && 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# fi

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

# gitconfig
git config --global core.editor vim
git config --global core.pager cat
git config --global merge.tool vimdiff

echo "finished installer.sh"
