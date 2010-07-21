# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export EDITOR=vim
export VISUAL=vim
alias phpcs='phpcs --standard=/home/josh/src/openfisma-extras/php_codesniffer/OpenFisma/'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKDFILES=true
