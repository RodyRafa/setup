# source git_utils
source ~/git_utils.sh
# auto complete git
source ~/.git-completion.bash

# PS1
##if [ "$GIT_HELPER" == "false" ]; then
  export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\] "
##else
 #export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[4;34m\]\$(parse_git_branch)\[\e[0m\]\[\e[0;31m\]\$(git_status)\[\e[0m\] "
##fi

#################################################################
# Netshoes
#################################################################

export CATALINA_HOME=/Users/$USER/bin/apache-tomcat-6.0.43
export JRE_HOME="/Library/Java/Home"
export JAVA_HOME=$JRE_HOME

alias ns-up="cd $CATALINA_HOME/bin && . catalina.sh start && cd -"
alias ns-down="cd $CATALINA_HOME/bin && . catalina.sh stop && cd -"

#################################################################
# Git
#################################################################
alias g="git"
alias gco="git checkout"
alias gs="git status"


alias ll="ls -la"
