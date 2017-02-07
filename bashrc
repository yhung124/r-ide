
# Autojump
. /usr/share/autojump/autojump.sh

# Git
. ~/.git-prompt.sh
. ~/.git-completion.bash

export export PS1="[\[\033[1;34m\]\u\[\033[0;37m\]@\h\[\033[0;32m\]:\w\[\033[0m\]]\[\033[0;33m\]\$(__git_ps1) \n\[\033[1;32m\]\$\[\033[0m\] "
export ACK_COLOR_MATCH='bold red'
export ACK_COLOR_FILENAME=yellow

function c {
  builtin cd "$@" && ls -F
}
