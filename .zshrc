HISTFILE=~/.histfile
HISTSIZE=30000
SAVEHIST=30000

zstyle :compinstall filename '$HOME/.zshrc'

source ~/.config/git-prompt.sh

autoload -U colors && colors

#PS1='%B%{$fg[green]%}%n%{$reset_color%}:%B%{$fg[blue]%}%~%{$reset_color%} $(git_prompt_string) %% '
#PS1='%B%{$fg[green]%}%n%{$reset_color%}:%B%{$fg[blue]%}%2~%{$reset_color%} $(git_prompt_string) %% '

precmd () { __git_ps1 "%F{green}%n%f" ":%F{blue}%~ $ %f " "|%s" }

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select=5
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}


. ~/.config/aliases
. ~/.config/vars

# Export PATH for Ruby
PATH=$PATH:$HOME/.gem/ruby/2.4.0/bin
export PATH

# Export PATH for Chef
PATH=$PATH:$HOME/.chefdk/gem/ruby/2.4.0/bin
export PATH

# Export PATH for Hub CLI
PATH=$PATH:/home/killian/.hub
export PATH

# Export colors for neovim
#export TERM=xterm-256color

# Export Neovim as default editor
export EDITOR=/usr/bin/nvim

# Enable Neovim True Colors
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# Stop the CTRL+S/CTRL+Q feature
stty -ixoff
stty stop undef
stty start undef

# home made
source ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Export path for rust cargo binaries
export PATH="$HOME/.cargo/bin:$PATH"

# Export path for Ansible hosts
export ANSIBLE_INVENTORY=~/ansible_hosts

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/bin/xsel" # Add Xset to PATH to have a clipboard in nvim

# Enable VTE notification for Tilix
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi

# Enable shortcuts for fzf
[ -f ~/.config/fzf/key-bindings.zsh ] && source ~/.config/fzf/key-bindings.zsh
[ -f ~/.config/fzf/completion.zsh ] && source ~/.config/fzf/completion.zsh
