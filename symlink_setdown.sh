#!/bin/sh

function remove_link {
	if test -L $1
	then
		rm --verbose $1
	fi
}

remove_link ${HOME}/.zshrc
remove_link ${HOME}/.zsh_aliases
remove_link ${HOME}/.zsh_prompt
remove_link ${HOME}/.vim/vimrc
remove_link ${HOME}/.ssh/config
remove_link ${HOME}/.tmux.conf
remove_link ${HOME}/.gitconfig
remove_link ${HOME}/.config/sway/config
remove_link ${HOME}/.sway_env
