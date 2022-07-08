# ZSH plugin that displays your current docker status given a containers list.
#
# Usage:
#
# 1. Add this plugin to your .zshrc file:
#
# plugins=(... docker ...)
#
# 2. Add the docker status to your theme (for example):
#
#  Simple:
#    The following containers are running: $(docker_status)
#
#  Something more colorful:
#    $fg_bold[yellow]%}USCIS proxy status \[$(docker_status)%{$fg_bold[yellow]%}\]%{$reset_color%}

function docker_status {
    #setopt shwordsplit

    local container_status=""
    local containers=$CONTAINERS

    echo $fg_bold[cyan]Checking containers: $containers \.\.\. $reset_color

    # setopt sh_word_split
    #for container in $(echo $containers); do
    for container in ${=containers}; do
        if [ "$(docker inspect -f '{{.State.Running}}' ${container} 2>/dev/null)" = "true" ]; then
            # echo ✅ $fg_bold[green]${container}$reset_color
            echo $fg_bold[green]⬆︎$reset_color ${container}
        else
            # echo 🔴 $fg_bold[red]${container}$reset_color
            echo $fg_bold[red]⬇︎$reset_color ${container}
        fi
    done
    #echo $container_status
}
