#!/bin/sh

# History definitions
HISTFILE=$HOME/.config/zsh/.zsh_history     # History filepath
HISTSIZE=999000					                    # Maximum size for terminal buffer
SAVEHIST=999000					                    # Maximum size for history file
HIST_STAMPS="dd/mm/yyyy"			              # History info format
setopt appendhistory				                # Append new command to the end of the history file
setopt HIST_SAVE_NO_DUPS			              # Do not write duplicate commands

# ZSH Options
setopt autocd 					                    # Change to directory without 'cd <directory>'
setopt correctall                           # Automatic correction
setopt globdots
setopt extendedglob
setopt nomatch
setopt menucomplete
setopt interactive_comments
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
stty stop undef
zle_highlight=('paste:none')
unsetopt beep 					                    # Silence the beeping

# ZSH Completions
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)			              # Add hidden files
compinit

autoload -Uz colors && colors

bindkey -e 					                        # Use EMACS default format for shortcuts
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

source "$ZDOTDIR/zsh-exports"
source "$ZDOTDIR/zsh-functions"
source "$ZDOTDIR/zsh-prompt"
source "$HOME/.config/aliases/aliases"

#Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zdharma/fast-syntax-highlighting"

eval $(thefuck --alias)
