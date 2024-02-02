# To enable __git_ps1 AND autocompletion on git commands on Linux
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
fi

export PS1='\[\e[38;5;219m\]\w\[\e[38;5;189m\]$(__git_ps1):\[\e[0m\] '
# Configure __git_ps1 in $PS1 to display info if there are local modifications
# (with *) or staged modifications (with +)
export GIT_PS1_SHOWDIRTYSTATE=1
# Configure __git_ps1 in $PS1 to display info regarding the state of the current
# branch in relation to its remote branch
export GIT_PS1_SHOWUPSTREAM=auto
# Configure __git_ps1 in $PS1 to display info regarding the state of the stash
# stack (with $ if there are any stashes)
export GIT_PS1_SHOWSTASHSTATE=1

# Add /usr/local/go/bin to the PATH environment variable
export PATH=/home/natalia/go/bin:/usr/local/go/bin:/home/natalia/bin:/home/natalia/.local/bin:$PATH

# Initialise pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
