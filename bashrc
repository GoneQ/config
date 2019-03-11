
[[ $- != *i* ]] && return

export LANG=en_US.utf8
export NNTPSERVER="news.epita.fr"

export EDITOR=emacs

alias ls='ls --color'
LS_COLORS="di=31;1:ln=1;36:so=34:pi=33:ex=1;32:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LS_COLORS

PS1='[\u@\h \W]\$ '
alias emacs="emacs -nw"
alias making="~/making_make"
alias ccreate="~/c_create"
export PS1="\[$(tput bold)\]\[\033[38;5;13m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;11m\]\t\[$(tput sgr0)\]\[\033[38;5;15m\]:\W\[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;13m\]]\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

#Color support for less
export LESS_TERMCAP_mb=$'\E[01;31m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;146m' # begin underline

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

alias check='~/afs/codingstyle/script.sh'
alias truesize='ls -s --block-size=1'
alias gpp='g++ -std=c++17 -pedantic -Wall -Wextra -Werror'
alias tiger='cd ~/afs/ING1/Projets/Tiger/epita/david.chen-tc/'
alias spider='cd ~/afs/ING1/Projets/Spider/david.chen-sws/'
alias yaka='cd /home/jean-damien.ly/afs/ING1/Projets/Yaka/antoine.allard-yakachoisir'export PGDATA="$HOME/postgres_data"
export PGDATA="$HOME/postgres_data"
export PGHOST="/tmp"