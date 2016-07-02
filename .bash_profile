# ENV aliases
alias src="source ~/.bash_profile"
alias vim="nvim"

#GIT aliases
alias ad="git add -A"
alias cm="git commit -m ${1}"
alias push='git push'
alias st="git status"
alias bd="git diff --name-status ${1}"
alias df="git difftool ${1}"
alias lg="git log --oneline --decorate ${1}"

export GOPATH=~/go

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

togo() {
	mkdir -p ~/tmp 
	echo "package main\n\nfunc main() {\n\n}" > ~/tmp/main.go 
	vim +4 ~/tmp/main.go
}
