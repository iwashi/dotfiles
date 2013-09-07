# For git setting
source ~/.rails.bash
source /usr/local/Cellar/git/1.8.0.2/etc/bash_completion.d/git-prompt.sh 
source /usr/local/Cellar/git/1.8.0.2/etc/bash_completion.d/git-completion.bash 
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
