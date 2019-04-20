# export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

parse_git_branch () {
  BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "(${BRANCH}) "
	else
		echo ""
	fi
}

export PS1="\n\[\e[33m\]\u \[\e[mat\] \[\e[35m\]\h\[\e[m\]:\n\[\e[0;32m\]\w \[\e[0;34m\]\$(parse_git_branch)\[\e[m\]> "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias cip58='ssh mklpiening@cip58.informatik.uos.de'
alias sv01='ssh root@mklpiening.de'

alias ll='ls -l'

alias restartpa='pulseaudio -k & pulseaudio --start'

neofetch
