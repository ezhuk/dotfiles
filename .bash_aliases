# .bash_aliases

alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

alias df='df -h'
alias du='du -sh'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias ls='ls -lGa'

alias find='find . -name'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias curl='curl --compressed'

alias reload='source ~/.bash_profile && echo "reloaded ~/.bash_profile"'
alias update='brew update -v; brew upgrade -v; brew cleanup -v; gem update --system; gem update'
