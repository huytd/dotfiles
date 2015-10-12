# ENV aliases
alias src="source ~/.bash_profile"
alias dic="~/dict.py ${1}"

# DOCKER aliases
alias dms="docker-machine start default"
alias dps="docker ps -a"
alias dim="docker images"
alias dlg="docker logs ${1}"
alias dockerNginx="docker run -p 80:80 -d nginx"
alias devbox_create="docker run --name devbox -p 80:80 -d -v ${PWD}:/src devbox"
alias devbox_go="docker exec -i -t devbox /usr/bin/zsh"

dex() {
    docker exec -it "$@" bash
}

#GIT aliases
alias ad="git add -A"
alias cm="git commit -m ${1}"
alias push='git push origin HEAD:refs/for/develop'
alias st="git status"
alias bd="git diff --name-status ${1}"
alias df="git diff ${1}"
alias lg="git log --oneline --decorate ${1}"
alias psh="git push"

echo "SOME EXTRA GIT COMMAND TO TRY: ad, cm, st, bd, df, lg"

export PATH=$PATH:~/Desktop/Code/idea-cli/

eval "$(docker-machine env default)"
export PATH=$PATH:/Users/huy/Desktop/Code/nodben

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
