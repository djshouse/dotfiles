alias ll="ls -lh"
alias e="subl . &"
alias dotfile="/usr/bin/git --git-dir=$HOME/.myconfig/ --work-tree=$HOME"

export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
if (length($0) > 14) { if (NF>3) print $1 "/.../" $(NF-1) "/" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
PS1="\[$(tput sgr0)\]\[\033[38;5;161m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:${MYPS}\$ \[$(tput sgr0)\]"

export TERM=xterm-256color
