# Path configuration
PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"

# Editor 
export EDITOR="vim"

# History settings
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL=ignoreboth
export HISTIGNORE="fg*:bg*:cd:ls"
export HISTTIMEFORMAT='%Y/%m/%d %T '

# For Ruby Envirionment Management
eval "$(rbenv init -)"

# Some shortcuts for me
alias ll='ls -lrt'
alias ls='ls -G'
alias r='rails'

# For 
source ~/.bashrc
