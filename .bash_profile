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
  local STATUS=$(git status 2>&1)
  if [[ "$STATUS" =~ On\ branch\ ([^[:space:]]+) ]]
  then
    local BRANCH=${BASH_REMATCH[1]}

    if [[ "$STATUS" =~ nothing\ to\ commit ]]
    then
      local COLOR=$GREEN
    else
      local COLOR=$BROWN
    fi

    echo -n "$COLOR"'·('"$BRANCH"')'"$NO";
  fi
}

prompt()
{
  PS1="\h:\W$(git_info)\$ "
}

PROMPT_COMMAND=prompt

