local PROMPT_SYMBOL=''
#LS_COLORS="di=0;36;40:ln=1;35;40:so=1;32;40:pi=1;33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=34;43:"
PROMPT="%F{green}%n@%m%f %F{blue}%/%f %F{white}$PROMPT_SYMBOL%f "
GREP_COLORS='ms=01;33:mc=01;31:sl=:cx=:fn=35:ln=32:bn=32:se=36'

source "$XDG_CONFIG_HOME/zsh/.ls_colors.sh"
export GREP_COLORS
export PROMPT
