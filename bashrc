
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=emacs

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias emacs="emacs -nw"
alias making="~/making_make"
alias ccreate="~/c_create"


# Color support for less
#export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
#export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
#export LESS_TERMCAP_me=$'\E[0m'           # end mode
#export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
#export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
#export LESS_TERMCAP_ue=$'\E[0m'           # end underline
#export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

alias grep='grep --color -n'

mkcdir()
{
	mkdir "$1" &&
	cd "$1"
}

makec()
{
	making $1 &&
	ccreate $1
}
