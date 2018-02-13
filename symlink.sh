#!/usr/bin/dash
XDG_CONFIG_HOME=$HOME/.config
ZDOTDIR=$XDG_CONFIG_HOME/zsh

alias make_directory='mkdir --parents --verbose'

alias create_link='ln --symbolic --verbose'

remove_link() {
	if test -L $1
	then
		rm --verbose $1
	else
		echo $1 is not a symbolic link
	fi
}


dir_setup() {
	make_directory $ZDOTDIR
	make_directory $HOME/.vim/after/ftplugin
	make_directory $HOME/.gnupg
	make_directory $XDG_CONFIG_HOME/git
	make_directory $HOME/.mutt
	make_directory $XDG_CONFIG_HOME/sway
	make_directory $XDG_CONFIG_HOME/systemd/user
}

env_symlink_setup() {
	create_link $PWD/pam/env $HOME/.pam_environment
}

sh_symlink_setup() {
	create_link $PWD/sh/profile $HOME/.profile
	create_link $PWD/sh/bashrc $HOME/.bashrc
	create_link $PWD/sh/zshrc $ZDOTDIR/.zshrc
}

vim_symlink_setup() {
	create_link $PWD/vim/vimrc $HOME/.vim/vimrc
	create_link $PWD/vim/filetype.vim $HOME/.vim/filetype.vim
	create_link $PWD/vim/text.vim $HOME/.vim/after/ftplugin/text.vim
	create_link $PWD/vim/tex.vim $HOME/.vim/after/ftplugin/tex.vim
	create_link $PWD/vim/html.vim $HOME/.vim/after/ftplugin/html.vim
	create_link $PWD/vim/javascript.vim $HOME/.vim/after/ftplugin/javascript.vim
}

gnupg_symlink_setup() {
	create_link $PWD/gnupg/agent.conf $HOME/.gnupg/gpg-agent.conf
}

tmux_symlink_setup() {
	create_link $PWD/tmux/conf $HOME/.tmux.conf
}

ssh_symlink_setup() {
	create_link $PWD/ssh/config $HOME/.ssh/config
	create_link $PWD/ssh/ssh-agent.service $XDG_CONFIG_HOME/systemd/user/ssh-agent.service
}

git_symlink_setup() {
	create_link $PWD/git/config $XDG_CONFIG_HOME/git/config
}

mutt_symlink_setup() {
	create_link $PWD/mutt/muttrc $HOME/.mutt/muttrc
	create_link $PWD/mutt/gmail $HOME/.mutt/gmail
	create_link $PWD/mutt/scarletmail $HOME/.mutt/scarletmail
	create_link $PWD/mutt/icloud $HOME/.mutt/icloud
}

gui_symlink_setup() {
	create_link $PWD/gui/config $XDG_CONFIG_HOME/sway/config
	create_link $PWD/gui/Xdefaults $HOME/.Xdefaults
}

global_symlink_setup() {
	# global configuration files
	# these are machine specific
	# and require root access to modify
	create_link $PWD/global/vconsole.conf /etc/vconsole.conf
	create_link $PWD/global/dvp.map /usr/local/share/kbd/keymaps/dvp.map
	#create_link $PWD/global/asound.conf /etc/asound.conf
	create_link $PWD/global/mirrorupgrade.hook /etc/pacman.d/hooks/mirrorupgrade.hook
}

all_symlink_setup() {
	dir_setup
	env_symlink_setup
	sh_symlink_setup
	vim_symlink_setup
	gnupg_symlink_setup
	tmux_symlink_setup
	ssh_symlink_setup
	git_symlink_setup
	mutt_symlink_setup
	gui_symlink_setup
	#global_symlink_setup
}

env_symlink_setdown() {
	remove_link $HOME/.pam_environment
}

sh_symlink_setdown() {
	remove_link $HOME/.profile
	remove_link $HOME/.bashrc
	remove_link $ZDOTDIR/.zshrc
}

vim_symlink_setdown() {
	remove_link $HOME/.vim/vimrc
	remove_link $HOME/.vim/filetype.vim
	remove_link $HOME/.vim/after/ftplugin/text.vim
	remove_link $HOME/.vim/after/ftplugin/tex.vim
	remove_link $HOME/.vim/after/ftplugin/html.vim
	remove_link $HOME/.vim/after/ftplugin/javascript.vim
}

gnupg_symlink_setdown() {
	remove_link $HOME/.gnupg/gpg-agent.conf
}

tmux_symlink_setdown() {
	remove_link $HOME/.tmux.conf
}

ssh_symlink_setdown() {
	remove_link $HOME/.ssh/config
	remove_link $XDG_CONFIG_HOME/systemd/user/ssh-agent.service
}

git_symlink_setdown() {
	remove_link $XDG_CONFIG_HOME/git/config
}

mutt_symlink_setdown() {
	remove_link $HOME/.mutt/muttrc
	remove_link $HOME/.mutt/gmail
	remove_link $HOME/.mutt/scarletmail
	remove_link $HOME/.mutt/icloud
}

gui_symlink_setdown() {
	remove_link $XDG_CONFIG_HOME/sway/config
	remove_link $HOME/.Xdefaults
}

global_symlink_setdown() {
	remove_link /etc/vconsole.conf
	remove_link /usr/local/share/kbd/keymaps/dvp.map
	#remove_link /etc/asound.conf
	remove_link /etc/pacman.d/hooks/mirrorupgrade.hook
}

all_symlink_setdown() {
	env_symlink_setdown
	sh_symlink_setdown
	vim_symlink_setdown
	gnupg_symlink_setdown
	tmux_symlink_setdown
	ssh_symlink_setdown
	git_symlink_setdown
	mutt_symlink_setdown
	gui_symlink_setdown
	#global_symlink_setdown
}

if test $1 = setup
then
	all_symlink_setup
elif test $1 = setdown
then
	all_symlink_setdown
else
	echo please specify setup or setdown
fi
