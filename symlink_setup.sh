#!/bin/sh

function env_symlink_setup {
	ln --symbolic --verbose $PWD/pam/env $HOME/.pam_environment
}

function zsh_symlink_setup {
	ln --symbolic --verbose $PWD/zsh/zshrc   $ZDOTDIR/.zshrc
	ln --symbolic --verbose $PWD/zsh/aliases $ZDOTDIR/aliases
	ln --symbolic --verbose $PWD/zsh/env     $ZDOTDIR/.zshenv
	ln --symbolic --verbose $PWD/zsh/prompt  $ZDOTDIR/prompt
}

function vim_symlink_setup {
	ln --symbolic --verbose $PWD/vim/vimrc          $HOME/.vim/vimrc
	ln --symbolic --verbose $PWD/vim/filetype.vim   $HOME/.vim/filetype.vim
	ln --symbolic --verbose $PWD/vim/text.vim       $HOME/.vim/after/ftplugin/text.vim
	ln --symbolic --verbose $PWD/vim/html.vim       $HOME/.vim/after/ftplugin/html.vim
	ln --symbolic --verbose $PWD/vim/javascript.vim $HOME/.vim/after/ftplugin/javascript.vim
}

function gnupg_symlink_setup {
	ln --symbolic --verbose $PWD/gnupg/agent.conf $HOME/.gnupg/gpg-agent.conf
}

function tmux_symlink_setup {
	ln --symbolic --verbose $PWD/tmux/conf $HOME/.tmux.conf
}

function git_symlink_setup {
	ln --symbolic --verbose $PWD/git/config $XDG_CONFIG_HOME/git/config
}

function mutt_symlink_setup {
	ln --symbolic --verbose $PWD/mutt/muttrc      $HOME/.mutt/muttrc
	ln --symbolic --verbose $PWD/mutt/gmail       $HOME/.mutt/gmail
	ln --symbolic --verbose $PWD/mutt/scarletmail $HOME/.mutt/scarletmail
	ln --symbolic --verbose $PWD/mutt/icloud      $HOME/.mutt/icloud
}

function sway_symlink_setup {
	ln --symbolic --verbose $PWD/sway/config    $XDG_CONFIG_HOME/sway/config
	ln --symbolic --verbose $PWD/sway/Xdefaults $HOME/.Xdefaults
}

function global_symlink_setup {
	# global configuration files
	# these are machine specific
	# and require root access to modify
	ln --symbolic --verbose $PWD/global/vconsole.conf /etc/vconsole.conf
	ln --symbolic --verbose $PWD/global/escape.map    /usr/local/share/kbd/keymaps/escape.map
	ln --symbolic --verbose $PWD/global/asound.conf   /etc/asound.conf
	ln --symbolic --verbose $PWD/global/mirror.hook   /etc/pacman.d/hooks/mirror.hook
}

function all_symlink_setup {
	env_symlink_setup
	zsh_symlink_setup
	vim_symlink_setup
	gnupg_symlink_setup
	tmux_symlink_setup
	git_symlink_setup
	mutt_symlink_setup
	sway_symlink_setup
	#global_symlink_setup
}

function remove_link {
	if test -L $1
	then
		rm --verbose $1
	else
		echo $1 'is not a symbolic link'
	fi
}

function env_symlink_setdown {
	remove_link $HOME/.pam_environment
}

function zsh_symlink_setdown {
	remove_link $ZDOTDIR/.zshrc
	remove_link $ZDOTDIR/aliases
	remove_link $ZDOTDIR/prompt
	remove_link $ZDOTDIR/.zshenv
}

function vim_symlink_setdown {
	remove_link $HOME/.vim/vimrc
	remove_link $HOME/.vim/filetype.vim
	remove_link $HOME/.vim/after/ftplugin/text.vim
	remove_link $HOME/.vim/after/ftplugin/html.vim
	remove_link $HOME/.vim/after/ftplugin/javascript.vim
}

function gnupg_symlink_setdown {
	remove_link $HOME/.gnupg/gpg-agent.conf
}

function tmux_symlink_setdown {
	remove_link $HOME/.tmux.conf
}

function git_symlink_setdown {
	remove_link $XDG_CONFIG_HOME/git/config
}

function mutt_symlink_setdown {
	remove_link $HOME/.mutt/muttrc
	remove_link $HOME/.mutt/gmail
	remove_link $HOME/.mutt/scarletmail
	remove_link $HOME/.mutt/icloud
}

function sway_symlink_setdown {
	remove_link $XDG_CONFIG_HOME/sway/config
	remove_link $HOME/.Xdefaults
}

function global_symlink_setdown {
	remove_link /etc/vconsole.conf
	remove_link /usr/local/share/kbd/keymaps/escape.map
	remove_link /etc/asound.conf
	remove_link /etc/pacman.d/hooks/mirror.hook
}

function all_symlink_setdown {
	env_symlink_setdown
	zsh_symlink_setdown
	vim_symlink_setdown
	gnupg_symlink_setdown
	tmux_symlink_setdown
	git_symlink_setdown
	mutt_symlink_setdown
	sway_symlink_setdown
	#global_symlink_setdown
}
