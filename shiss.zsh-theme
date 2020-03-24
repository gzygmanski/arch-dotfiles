# :::::::::::::::[]::::::::::::: #
# :::: /_> |U_U| || /_> /_> :::: #
# :::: <=/ |T-T| || <=/ <=/ :::: #
# ::::::::SHISS DOTFILES:::::::: #
# https://github.com/gzygmanski: #
# gzygmanski@hotmail.com:::::::: #

PROMPT=$'\n%{$fg[white]%}%n%{$fg[blue]%} in %{$fg[green]%}$(virtualenv_prompt_info)%c $(git_prompt_info)%{$reset_color%}\n%{$fg[white]%}:: '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_VIRTUALENV_PREFIX="<"
ZSH_THEME_VIRTUALENV_SUFFIX="> "
