# .bash_profile

export CLICOLOR=1

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

RED="\[\e[0;31m\]"
GREEN="\[\e[0;32m\]"
BROWN="\[\e[0;33m\]"
BLUE="\[\e[0;34m\]"
PURPLE="\[\e[0;35m\]"
CYAN="\[\e[0;36m\]"
GRAY="\[\e[0;37m\]"

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

