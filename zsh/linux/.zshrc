HISTFILE="$XDG_STATE_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt APPEND_HISTORY


setopt AUTOCD
setopt NOBEEP
setopt NUMERIC_GLOB_SORT

source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/prompt.zsh"

