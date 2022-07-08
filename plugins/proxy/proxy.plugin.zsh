# proxy.plugin.zsh
#
# ZSH plugin that displays your current proxy status.
#
# Usage:
#
# 1. Add this plugin to your .zshrc file:
#
# plugins=(... proxy ...)
#
# 2. Add the proxy status to your theme (for example):
#
#  Simple:
#    Proxy status: $(proxy_status)
#
#  Something more colorful:
#    $fg_bold[yellow]%}Proxy status \[$(proxy_status)%{$fg_bold[yellow]%}\]%{$reset_color%}

function proxy_status {
  if (( ${+NO_PROXY} )); then
      local proxy_status="$fg_bold[green]on$reset_color"
  else
      local proxy_status="$fg_bold[red]off$reset_color"
  fi
  echo $proxy_status
}

# These functions turn the proxy on/off, you can call them directly; however, there are aliases defined below.

# TODO: export all settings related to proxification...
function proxify {
  export http_proxy=http://the_proxy:80
  # Proxy for Homebrew CLI (macOS)
  export ALL_PROXY=$http_proxy
}

# TODO: unset all settings related to proxification...
function deproxify {
  unset http_proxy
  # Proxy for Homebrew CLI (macOS)
  unset ALL_PROXY
}


# For those who do not like to type...
alias pon='proxify'
alias poff='deproxify'
