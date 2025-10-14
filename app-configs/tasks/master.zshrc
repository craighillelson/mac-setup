autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%F{white}on %F{cyan}branch %b '

setopt PROMPT_SUBST
PROMPT='%B> %F{cyan}%n %F{white}at %F{cyan}%m %F{white}in %F{cyan}${PWD/#$HOME/~} ${vcs_info_msg_0_}%b%F{white}'