# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

FILES=(~/.bash_aliases
       ~/.bash_functions
       ~/.bash_prompt
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
