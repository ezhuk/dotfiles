# Copyright (c) 2013 Eugene Zhuk.
# Use of this source code is governed by the MIT license that can be found
# in the LICENSE file.

# Easier navigation.
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Enable human-readable output by default.
alias df='df -h'
alias du='du -sh'

# Prompt before overwriting or removing a file.
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Enable colors, long format and show dirs whose names begin with a dot.
alias ls='ls -lGa'

# Automatically mark up the matching text.
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Enable compression by default.
alias curl='curl --compressed'

# Reload the shell.
alias reload='source ~/.bash_profile && echo "reloaded ~/.bash_profile"'

# Generate UNIX timestamp.
alias timestamp='date -j "+%s"'

# Enable/disable ReportCrash.
alias rce='reportcrash --enable'
alias rcd='reportcrash --disable'
