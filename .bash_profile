export CLICOLOR=1

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

export PS1="\s-\v\[\e[1;33m\]\$(get_git_branch)\[\e[0m\]$ "

get_git_branch()
{
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/·(\1)/'
}


