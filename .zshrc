# Lines configured by zsh-newuser-install                                                                                                                                                                      [0/83]
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

bindkey '\e[1~' beginning-of-line
bindkey '\e[3~' delete-char
bindkey '\e[4~' end-of-line
bindkey '\177' backward-delete-char
bindkey '\e[2~' overwrite-mode

bindkey "\e[7~" beginning-of-line
bindkey "\e[H" beginning-of-line
#bindkey "\e[2~" transpose-words
bindkey "\e[8~" end-of-line
bindkey "\e[F" end-of-line
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

bindkey ';5C' emacs-backward-word
bindkey ';5C' emacs-forward-word
bindkey '^R' history-incremental-search-backward

zstyle :compinstall filename '/home/killian/.zshrc'

source ~/.config/git-prompt.zsh

autoload -U colors && colors

PS1='%B%{$fg[green]%}%n%{$reset_color%}:%B%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_string) %% '

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select=5
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


. ~/.config/aliases
. ~/.config/vars

# Export PATH for Stata software
PATH=$PATH:/home/killian/Logiciels/Stata14Linux64
export PATH

# Export PATH for Ruby
PATH=$PATH:/home/killian/.gem/ruby/2.3.0/bin
export PATH

# Export colors for neovim
#export TERM=xterm-256color

# Export Neovim as default editor
export EDITOR=/usr/bin/nvim

# Stop the CTRL+S/CTRL+Q feature
stty -ixoff
stty stop undef
stty start undef

# home made
source ~/.profile

# Export path for Ansible hosts
export ANSIBLE_INVENTORY=~/ansible_hosts
