#!/bin/sh

ln --symbolic --verbose ${PWD}/pam/env          $HOME/.pam_environment
ln --symbolic --verbose ${PWD}/zsh/zshrc        ${XDG_CONFIG_HOME}/zsh/.zshrc
ln --symbolic --verbose ${PWD}/zsh/aliases      ${XDG_CONFIG_HOME}/zsh/aliases
ln --symbolic --verbose ${PWD}/zsh/env          ${XDG_CONFIG_HOME}/zsh/.zshenv
ln --symbolic --verbose ${PWD}/zsh/prompt       ${XDG_CONFIG_HOME}/zsh/prompt
ln --symbolic --verbose ${PWD}/vim/vimrc        ${HOME}/.vim/vimrc
ln --symbolic --verbose ${PWD}/lynx/lynxrc      ${HOME}/.lynxrc
ln --symbolic --verbose ${PWD}/gnupg/agent.conf ${HOME}/.gnupg/gpg-agent.conf
ln --symbolic --verbose ${PWD}/ssh/config       ${HOME}/.ssh/config
ln --symbolic --verbose ${PWD}/tmux/conf        ${HOME}/.tmux.conf
ln --symbolic --verbose ${PWD}/git/config       ${XDG_CONFIG_HOME}/git/config
ln --symbolic --verbose ${PWD}/sway/config      ${XDG_CONFIG_HOME}/sway/config
ln --symbolic --verbose ${PWD}/sway/Xdefaults   ${HOME}/.Xdefaults

# global configuration files
# these are machine specific
# and require root access to modify
#ln -sv ${PWD}/global/vconsole.conf /etc/vconsole.conf
#ln -sv ${PWD}/global/escape.map    /usr/local/share/kbd/keymaps/escape.map
#ln -sv ${PWD}/global/asound.conf   /etc/asound.conf
#ln -sv ${PWD}/global/mirror.hook   /etc/pacman.d/hooks/mirror.hook
