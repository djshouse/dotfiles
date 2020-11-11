alias ll="ls -lh"
alias pf="ssh -NfL 8889:localhost:8889 dev-dsk-valverdm-2a-78555f66.us-west-2.amazon.com"
alias sam="brazil-build-tool-exec sam"

# terminal prompt formatting #
export MYPS='$(echo -n "${PWD/#$HOME/~}" | awk -F "/" '"'"'{
if (length($0) > 14) { if (NF>3) print $1 "/.../" $(NF-1) "/" $NF;
else print $1 "/.../" $NF; }
else print $0;}'"'"')'
PS1="\[\033[1;35m\]\h\[$(tput sgr0)\]:${MYPS} \$ "

# fix backspace key in emacs terminal #
if [[ -n $INSIDE_EMACS && $(uname) == 'Darwin' ]]; then
    stty ek
fi

export PATH=$BRAZIL_CLI_BIN:$PATH
export PATH=$PATH:~/bin
export PATH=/usr/bin:/usr/local/bin:$PATH
