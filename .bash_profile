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
NO="\[\033[00m\]"

git_info()
{
  BRANCH=$(git branch 2> /dev/null)
  if [ -n "$BRANCH" ];
  then
    BRANCH=$(echo "$BRANCH" | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/");

    STATUS=$(git status --porcelain 2> /dev/null);
    if [ -n "$STATUS" ];
    then
      echo -n "$BROWN"'·('"$BRANCH"'*)'"$NO";
    else
      echo -n "$GREEN"'·('"$BRANCH"')'"$NO";
    fi
  fi
}

prompt()
{
  PS1="\h:\W$(git_info)\$ "
}

PROMPT_COMMAND=prompt

