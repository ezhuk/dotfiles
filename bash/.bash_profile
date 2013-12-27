# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

FILES=(~/.bash_aliases
       ~/.bash_functions
       $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
       $(brew --prefix hg)/etc/bash_completion.d/hg-completion.bash)

for FILE in "${FILES[@]}"; do
    if [[ -f "$FILE" ]]; then
	source "$FILE"
    fi
done

export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$RBENV_ROOT/shims:/usr/local/bin:/usr/local/sbin:$PATH"

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
    if [[ "$STATUS" =~ On\ branch\ ([^[:space:]]+) ]]; then
	local BRANCH=${BASH_REMATCH[1]}
	if [[ "$STATUS" =~ nothing\ to\ commit ]]; then
	    if [[ "$STATUS" =~ Your\ branch\ is\ ahead\ of ]]; then
		local COLOR=$BROWN
	    else
		local COLOR=$GREEN
	    fi
	else
	    local COLOR=$RED
	fi

	echo -n "$COLOR"'·('"$BRANCH"')'"$NO"
    fi
}

prompt()
{
    PS1="\h:\W$(git_info)\$ "
}

PROMPT_COMMAND=prompt
