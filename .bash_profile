# .bash_profile

export CLICOLOR=1

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

RED="\[\033[0;31m\]"
GREEN="\[\033[0;32m\]"
BROWN="\[\033[0;33m\]"
BLUE="\[\033[0;34m\]"
PURPLE="\[\033[0;35m\]"
CYAN="\[\033[0;36m\]"
GRAY="\[\033[0;37m\]"

export PS1="\W$BROWN\$(git_info)\[\e[0m\]$ "

git_status()
{
  [[ -n $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

git_info()
{
  BRANCH=$(git branch 2> /dev/null)
  [[ -n $BRANCH ]] && echo "$BRANCH" | sed -e "/^[^*]/d" -e "s/* \(.*\)/·\(\1$(git_status)\)/"
}

