# This should be cloned to your .oh-my-zsh/custom/themes folder.

ARROW=%{$fg_bold[red]%}＞$reset_color
RETURN=%{$fg[red]%}⮐$reset_color

PROMPT=$'\
$ARROW%{$fg_bold[yellow]%}%D{%a %b %d, %Y %-I:%M:%S %p}%{$reset_color%}\
$ARROW%{$fg_bold[yellow]%}Proxy: $(proxy_status)%{$reset_color%}\
$ARROW%{$fg_bold[cyan]%}%~%{$reset_color%}$(git_prompt_info)%{$reset_color%}\
\
%n@%m $ARROW%{$reset_color%}'

RPROMPT=$'%{$fg_bold[red]%}$(rbenv_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[yellow]%}⚡️"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}]"
