#!/bin/sh

function remove_link {
	if test -L $1
	then
		rm --verbose $1
	else
		echo $1 'is not a symbolic link'
	fi
}

remove_link ${HOME}/.pam_environment
remove_link ${XDG_CONFIG_HOME}/zsh/.zshrc
remove_link ${XDG_CONFIG_HOME}/zsh/aliases
remove_link ${XDG_CONFIG_HOME}/zsh/prompt
remove_link ${XDG_CONFIG_HOME}/zsh/.zshenv
remove_link ${HOME}/.vim/vimrc
remove_link ${HOME}/.lynxrc
remove_link ${HOME}/.gnupg/gpg-agent.conf
remove_link ${HOME}/.ssh/config
remove_link ${HOME}/.tmux.conf
remove_link ${XDG_CONFIG_HOME}/git/config
remove_link ${XDG_CONFIG_HOME}/sway/config
remove_link ${HOME}/.Xdefaults

# global configuration files
#remove_link /etc/vconsole.conf
#remove_link /usr/local/share/kbd/keymaps/escape.map
#remove_link /etc/asound.conf
#remove_link /etc/pacman.d/hooks/mirror.hook
