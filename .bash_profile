export CLICOLOR=1
export PS1="\s-\v$ "

export HISTCONTROL=erasedups
export HISTSIZE=1000
export HISTFILESIZE=1000

# Add tab completion for SSH hostnames from ~/.ssh/config
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp ssh
