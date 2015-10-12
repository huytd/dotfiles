alias src="source ~/.bash_profile"
alias push='git push origin HEAD:refs/for/develop'
alias dockerNginx="docker run -p 80:80 -d nginx"

alias devbox_create="docker run --name devbox -p 80:80 -d -v ${PWD}:/src devbox"
alias devbox_go="docker exec -i -t devbox /usr/bin/zsh"

alias st="git status"
alias bd="git diff --name-status ${1}"
alias df="git diff ${1}"
alias lg="git log --oneline --decorate"

echo "SOME EXTRA GIT COMMAND TO TRY: st, bd, df, lg"

export PATH=$PATH:~/Desktop/Code/idea-cli/

eval "$(docker-machine env default)"
export PATH=$PATH:/Users/huy/Desktop/Code/nodben

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
