# ENV aliases
alias src="source ~/.bash_profile"
alias vim="emacs"

#GIT aliases
alias ad="git add -A"
alias cm="git commit -m ${1}"
alias push='git push'
alias st="git status"
alias br="git branch"
alias gc="git checkout"
alias dff="git diff"
alias lg="git log --oneline --decorate ${1}"

export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

if [ -z "$TMUX" ]; then
    tmux a || tmux new
fi
