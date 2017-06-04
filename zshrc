# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/steve/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# use dvorak for spelling correction
setopt dvorak

source .zsh_aliases
source .zsh_prompt
