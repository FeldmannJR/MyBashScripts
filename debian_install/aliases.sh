function dcmd(){
    CONTAINER="${PWD##*/}_app_1"
    docker exec -it -u 1000 -w /var/www/html/ $CONTAINER $@
}

function dartisan(){
    dcmd php artisan $@
}

function dcomposer(){
    dcmd composer $@
}

function aatach(){
    while true; do
        docker attach $1 
        echo "Pressione qualquer tecla para parar a execução..."
        read -s -r -n 1 -t 3
        if [ $? = 0 ]; then
            echo "Saindo"
            break
        fi
        docker restart $1
    done    
}


#Bind para baixar audio do youtube
alias youtube-audio-dl='youtube-dl -x --audio-format best'
alias idea="intellij-idea-ultimate"
alias k="kubectl"
complete -F __start_kubectl k
alias d="docker"
alias dc="docker-compose"
alias m="mvn"
alias mci="mvn clean install"
alias mcp="mvn clean package"
alias code="codium"
