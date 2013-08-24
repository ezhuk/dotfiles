# .bash_profile

export CLICOLOR=1

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

export PS1="\W\[\e[1;33m\]\$(git_info)\[\e[0m\]$ "

git_status()
{
  [[ -n $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

git_info()
{
  BRANCH=$(git branch 2> /dev/null)
  [[ -n $BRANCH ]] && echo "$BRANCH" | sed -e "/^[^*]/d" -e "s/* \(.*\)/·\(\1$(git_status)\)/"
}

