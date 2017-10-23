
# Autojump
[[ -s /home/build/.autojump/etc/profile.d/autojump.sh ]] && source /home/build/.autojump/etc/profile.d/autojump.sh

# Git
. ~/.git-prompt.sh
. ~/.git-completion.bash

# Kubectl auto completion
if [[ -f /home/build/bin/kubectl ]]; then
  source <(/home/build/bin/kubectl completion bash)
fi

EC() { echo -e '\e[1;31m'Error: $?'\e[m\n'; }
trap EC ERR
export export PS1="[\[\033[1;34m\]\u\[\033[0;37m\]@\h\[\033[0;32m\]:\w\[\033[0m\]]\[\033[0;33m\]\$(__git_ps1) \n\[\033[1;32m\]\$\[\033[0m\] "
export ACK_COLOR_MATCH='bold red'
export ACK_COLOR_FILENAME=yellow

function c {
  builtin cd "$@" && ls -F
}

alias l='ls'
alias la='ls -la'
alias ll='ls -lh'
alias ack='ack-grep'
