#!/bin/bash
# Export before sourcing this file PS_COLOR variable

#--------------------Options------------------
set -o notify
set -o ignoreeof
shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend
shopt -s globstar


#--------------------Exports--------------
export HISTCONTROL="ignoredups:erasedups:ignorespace"
export HISTIGNORE="[ ]*:&:bg:fg:exit"
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export HISTSIZE=100000
export HISTFILESIZE=100000
export PS1="\[\e]0;\w\a\]\n\[\e[34m\]\u@\h \[\e[33m\]\t \w\[\e[0m\]\n\$ "



#---------------------Aliases---------
alias df='df -h'
alias du='du -h --max-depth=1'
alias grep='grep --color'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias m-install='mvn clean install'
alias ga='git add'
alias gc='git status -s -uno; git commit -a -m "Archiving"'

