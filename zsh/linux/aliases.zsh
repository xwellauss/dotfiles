alias less='less -r'                          # raw control characters
alias whence='type -a'                        # where, of a sort
alias grep='grep --color'                     # show differences in colour
alias egrep='egrep --color=auto'              # show differences in colour
alias fgrep='fgrep --color=auto'              # show differences in colour

#alias premake5="/mnt/E278E1D278E1A58F/dev/programs/premake5/premake5"
alias emsdk_env="source /mnt/E278E1D278E1A58F/dev/programs/emsdk/emsdk_env.sh"
load_nvm() {
    if [ -s "$NVM_DIR/nvm.sh" ]; then
        \. "$NVM_DIR/nvm.sh"
        [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
        echo "NVM environment activated successfully!"
    else
        echo "Error: Could not locate nvm.sh"
    fi
}

alias github_ssh="ssh-add ~/.ssh/id_ed25519"


alias ls='ls --color=auto'                 # classify files in colour
alias dir='ls --color=auto --format=vertical'
alias vdir='ls --color=auto --format=long'
alias ll='ls -l'                              # long list
alias la='ls -A'                              # all but . and ..
alias l='ls -CF'                              #
