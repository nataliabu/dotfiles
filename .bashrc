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

if [ -f ~/.bashrc_local ]; then
	. ~/.bashrc_local
fi
