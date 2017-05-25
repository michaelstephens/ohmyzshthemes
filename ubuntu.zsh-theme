#use extended color palette if available
if [[ $terminfo[colors] -ge 256 ]]; then
    turquoise="%F{81}"
    orange="%F{166}"
    purple="%F{135}"
    hotpink="%F{161}"
    limegreen="%F{118}"
else
    turquoise="%F{cyan}"
    orange="%F{yellow}"
    purple="%F{magenta}"
    hotpink="%F{red}"
    limegreen="%F{green}"
fi

PROMPT='%{$orange%}%2c%F{magenta} [%f '
RPROMPT='$(git_prompt_info) %F{magenta}] %{$orange%}%D{%L:%M} %F{magenta}%D{%p}%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
