#!/bin/zsh

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/vimrc ~/.vimrc
ln -sf ${BASEDIR}/vim ~/.vim

# zsh
ln -sf ${BASEDIR}/zshrc ~/.zshrc

if [! -d $ZSH_CUMSTOM/plugins/zsh-autosuggestions ];then
	echo "installing zsh-autosuggestions..."
	env -i git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi

if [ ! -d "$ZSH_CUMSTOM/plugins/zsh-syntax-highlighting" ];then
	echo "installing zsh-syntax-highlighting..."
	git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
fi

# tmux
ln -sf ${BASEDIR}/tmux.conf ~/.tmux.conf

