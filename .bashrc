# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
. /etc/bashrc
fi

. /usr/share/doc/git-1.7.11.7/contrib/completion/git-completion.bash

set -o vi

# User specific aliases and functions

export EDITOR=vim
export VISUAL=vim
alias phpcs='phpcs --standard=/home/jboyd/src/devtools/codesniffer/VIPStandard'
alias ls='ls --color'
alias grep='grep --color=always'
#alias jsl='jsl -conf /home/josh/etc/jsl.conf'
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#export GIT_PS1_SHOWDIRTYSTATE=true
#export GIT_PS1_SHOWUNTRACKDFILES=true
export AMDAPPSDKROOT=/home/josh/src/AMD-APP-SDK-v2.4-lnx64/
export AMDAPPSDKSAMPLESROOT=/home/josh/src/AMD-APP-SDK-v2.4-lnx64/
export LD_LIBRARY_PATH=/home/josh/src/AMD-APP-SDK-v2.4-lnx64/lib/x86_64:${LD_LIBRARY_PATH}

export CVSROOT=jus3r06b@olympus:/home/cvs/.cvsroot
export CVS_RSH=ssh
alias cvsstat='cvs status \!* |& grep Status:'
alias cvswhat='cvs status \!* |& grep Status: |& grep -v "to-date"'

export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKDFILES=true

eval `dircolors /home/jboyd/.dir_colors`

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
