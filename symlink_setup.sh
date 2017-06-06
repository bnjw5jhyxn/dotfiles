#!/bin/sh

ln --symbolic --verbose ${PWD}/zsh/zshrc      ${HOME}/.zshrc
ln --symbolic --verbose ${PWD}/zsh/aliases    ${HOME}/.zsh_aliases
ln --symbolic --verbose ${PWD}/zsh/prompt     ${HOME}/.zsh_prompt
ln --symbolic --verbose ${PWD}/vim/vimrc      ${HOME}/.vim/vimrc
ln --symbolic --verbose ${PWD}/lynx/lynxrc    ${HOME}/.lynxrc
ln --symbolic --verbose ${PWD}/ssh/config     ${HOME}/.ssh/config
ln --symbolic --verbose ${PWD}/tmux/conf      ${HOME}/.tmux.conf
ln --symbolic --verbose ${PWD}/git/config     ${HOME}/.config/git/config
ln --symbolic --verbose ${PWD}/sway/config    ${HOME}/.config/sway/config
ln --symbolic --verbose ${PWD}/sway/env       ${HOME}/.sway_env
ln --symbolic --verbose ${PWD}/sway/Xdefaults ${HOME}/.Xdefaults

# global configuration files
# these are machine specific
# and require root access to modify
#ln -sv ${PWD}/global/vconsole.conf /etc/vconsole.conf
#ln -sv ${PWD}/global/escape.map    /usr/local/share/kbd/keymaps/escape.map
#ln -sv ${PWD}/global/asound.conf   /etc/asound.conf
#ln -sv ${PWD}/global/mirror.hook   /etc/pacman.d/hooks/mirror.hook
