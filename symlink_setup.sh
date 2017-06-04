#!/bin/sh

ln --symbolic --verbose ${PWD}/zshrc       ${HOME}/.zshrc
ln --symbolic --verbose ${PWD}/zsh_aliases ${HOME}/.zsh_aliases
ln --symbolic --verbose ${PWD}/zsh_prompt  ${HOME}/.zsh_prompt
ln --symbolic --verbose ${PWD}/vimrc       ${HOME}/.vim/vimrc
ln --symbolic --verbose ${PWD}/lynxrc       ${HOME}/.lynxrc
ln --symbolic --verbose ${PWD}/ssh_config  ${HOME}/.ssh/config
ln --symbolic --verbose ${PWD}/tmux.conf   ${HOME}/.tmux.conf
ln --symbolic --verbose ${PWD}/git_config   ${HOME}/.config/git/config
ln --symbolic --verbose ${PWD}/sway_config ${HOME}/.config/sway/config
ln --symbolic --verbose ${PWD}/sway_env	   ${HOME}/.sway_env
