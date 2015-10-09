alias dockerNginx="docker run -p 80:80 -d nginx"
alias devbox_create="docker run --name devbox -p 80:80 -d -v ${PWD}:/src devbox"
alias devbox_go="docker exec -i -t devbox /usr/bin/zsh"
eval "$(docker-machine env default)"
