# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

FILES=(~/.bash_aliases
       ~/.bash_functions
       ~/.bash_options
       ~/.bash_prompt
       $(brew --prefix git)/etc/bash_completion.d/git-completion.bash
       $(brew --prefix hg)/etc/bash_completion.d/hg-completion.bash)

for file in "${FILES[@]}"; do
    if [[ -f "$file" ]]; then
        source "$file"
    fi
done

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$RBENV_ROOT/shims:$PATH"

export PATH="$PATH:/usr/local/depot_tools"

export CLICOLOR=1

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=8192
export HISTFILESIZE=8192
