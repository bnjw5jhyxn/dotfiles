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


symlink_setup() {
	make_directory $ZDOTDIR
	make_directory $HOME/.vim/after/ftplugin
	make_directory $HOME/.gnupg
	make_directory $HOME/.ssh
	make_directory $XDG_CONFIG_HOME/git
	make_directory $XDG_CONFIG_HOME/pip
	make_directory $XDG_CONFIG_HOME/sway
	make_directory $XDG_CONFIG_HOME/termite
	make_directory $XDG_CONFIG_HOME/waybar
	make_directory $XDG_CONFIG_HOME/systemd/user
	make_directory $HOME/xdg/desktop
	make_directory $HOME/xdg/documents
	make_directory $HOME/xdg/downloads
	make_directory $HOME/xdg/music
	make_directory $HOME/xdg/pictures
	make_directory $HOME/xdg/public
	make_directory $HOME/xdg/templates
	make_directory $HOME/xdg/videos
	create_link $PWD/pam/env $HOME/.pam_environment
	create_link $PWD/git/config $XDG_CONFIG_HOME/git/config
	create_link $PWD/gnupg/agent.conf $HOME/.gnupg/gpg-agent.conf
	create_link $PWD/gui/sway_config $XDG_CONFIG_HOME/sway/config
	create_link $PWD/gui/termite_config $XDG_CONFIG_HOME/termite/config
	create_link $PWD/gui/user-dirs.dirs $XDG_CONFIG_HOME/user-dirs.dirs
	create_link $PWD/gui/waybar_config $XDG_CONFIG_HOME/waybar/config
	create_link $PWD/gui/waybar_style.css $XDG_CONFIG_HOME/waybar/style.css
	create_link $PWD/gui/waybar_alsa.sh $XDG_CONFIG_HOME/waybar/alsa.sh
	create_link $PWD/gui/waybar_brightness.sh $XDG_CONFIG_HOME/waybar/brightness.sh
	create_link $PWD/gui/Xdefaults $HOME/.Xdefaults
	create_link $PWD/python/pip.conf $XDG_CONFIG_HOME/pip/pip.conf
	create_link $PWD/sh/profile $HOME/.profile
	create_link $PWD/sh/bashrc $HOME/.bashrc
	create_link $PWD/sh/zshrc $ZDOTDIR/.zshrc
	create_link $PWD/sh/zlogin $ZDOTDIR/.zlogin
	create_link $PWD/ssh/config $HOME/.ssh/config
	create_link $PWD/ssh/ssh-agent.service $XDG_CONFIG_HOME/systemd/user/ssh-agent.service
	create_link $PWD/tmux/conf $HOME/.tmux.conf
	create_link $PWD/vim/vimrc $HOME/.vim/vimrc
	create_link $PWD/vim/filetype.vim $HOME/.vim/filetype.vim
	create_link $PWD/vim/html.vim $HOME/.vim/after/ftplugin/html.vim
	create_link $PWD/vim/javascript.vim $HOME/.vim/after/ftplugin/javascript.vim
	create_link $PWD/vim/json.vim $HOME/.vim/after/ftplugin/json.vim
	create_link $PWD/vim/tex.vim $HOME/.vim/after/ftplugin/tex.vim
	create_link $PWD/vim/text.vim $HOME/.vim/after/ftplugin/text.vim
	# global configuration files
	# these are machine specific
	# and require root access to modify
	#create_link $PWD/global/vconsole.conf /etc/vconsole.conf
	#create_link $PWD/global/dvp.map /usr/local/share/kbd/keymaps/dvp.map
	#create_link $PWD/global/asound.conf /etc/asound.conf
	#create_link $PWD/global/mirrorupgrade.hook /etc/pacman.d/hooks/mirrorupgrade.hook
}

symlink_setdown() {
	remove_link $HOME/.pam_environment
	remove_link $XDG_CONFIG_HOME/git/config
	remove_link $XDG_CONFIG_HOME/sway/config
	remove_link $XDG_CONFIG_HOME/termite/config
	remove_link $XDG_CONFIG_HOME/user-dirs.dirs
	remove_link $XDG_CONFIG_HOME/waybar/config
	remove_link $XDG_CONFIG_HOME/waybar/style.css
	remove_link $XDG_CONFIG_HOME/waybar/alsa.sh
	remove_link $XDG_CONFIG_HOME/waybar/brightness.sh
	remove_link $HOME/.Xdefaults
	remove_link $HOME/.gnupg/gpg-agent.conf
	remove_link $XDG_CONFIG_HOME/pip/pip.conf
	remove_link $HOME/.profile
	remove_link $HOME/.bashrc
	remove_link $ZDOTDIR/.zshrc
	remove_link $ZDOTDIR/.zlogin
	remove_link $HOME/.ssh/config
	remove_link $XDG_CONFIG_HOME/systemd/user/ssh-agent.service
	remove_link $HOME/.tmux.conf
	remove_link $HOME/.vim/vimrc
	remove_link $HOME/.vim/filetype.vim
	remove_link $HOME/.vim/after/ftplugin/html.vim
	remove_link $HOME/.vim/after/ftplugin/javascript.vim
	remove_link $HOME/.vim/after/ftplugin/json.vim
	remove_link $HOME/.vim/after/ftplugin/tex.vim
	remove_link $HOME/.vim/after/ftplugin/text.vim
	#remove_link /etc/vconsole.conf
	#remove_link /usr/local/share/kbd/keymaps/dvp.map
	#remove_link /etc/asound.conf
	#remove_link /etc/pacman.d/hooks/mirrorupgrade.hook
}

if test $1 = setup
then
	symlink_setup
elif test $1 = setdown
then
	symlink_setdown
else
	echo please specify setup or setdown
fi
