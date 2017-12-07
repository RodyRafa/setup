#colors
NC="\033[0m"
GREEN="\033[32m"
RED="\033[31m"

# source git_utils
source ~/git_utils.sh
# auto complete git
source ~/.git-completion.bash
# PS1
if [ "$GIT_HELPER" == "false" ]; then
  echo "Removes the GIT helpers"
  export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\] "
else
  export PS1="\[\e[00;33m\]\u\[\e[0m\]\[\e[00;37m\]@\[\e[0m\]\[\e[00;36m\][\w]\[\e[0m\]\[\e[4;34m\]\$(parse_git_branch)\[\e[0;31m\]\$(git_status)\[\e[0m\] "
fi


#################################################################
# Git
#################################################################
alias g="git"
alias gco="git checkout"
alias gs="git status"
alias no-git="GIT_HELPER=false source ~/.bash_profile"
alias yes-git="GIT_HELPER=true source ~/.bash_profile"

alias ll="ls -la"
alias minecraft="cd /Games/Minecraft/server\ 1.12/ && java -Xmx1024M -Xms1024M -jar minecraft_server.1.12.jar nogui
"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools


