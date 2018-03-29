# Vim keybindings
bindkey -v

# Prompt
source $ZDOTDIR/prompt

# Autocompletion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# History
setopt share_history
setopt hist_ignore_space
setopt hist_no_store
setopt hist_ignore_all_dups
setopt hist_save_no_dups
HISTFILE=~/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000

# Directory
setopt autocd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home
DIRSTACKSIZE=50

# Fzf
source $ZDOTDIR/fzf

# Aliases
source $ZDOTDIR/aliases
