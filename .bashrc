export PS1='\[\e[38;5;219m\]\w\[\e[38;5;189m\]:\[\e[0m\] '

if [ -f /usr/local/etc/bash_completion ]; then
	echo "bash completion"
    . /usr/local/etc/bash_completion
fi
# To enable autocompletion with Git
if [ -f ~/.git-completion.bash ]; then
	echo "git completion"
  . ~/.git-completion.bash
fi

PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
