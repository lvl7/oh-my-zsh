if [[ $(uname -s) == 'Darwin' ]]; then
    front_thingy='👾 '
    ex='✗ '
else
    front_thingy='→ '
    ex='X '
fi

PROMPT='%{$fg_bold[cyan]%}${front_thingy}%{$reset_color%}%{$fg_bold[green]%}%p %{$reset_color%}%{$fg[green]%}%c %{$reset_color%}%{$fg_bold[cyan]%}$(git_prompt_info)%{$reset_color%}$(svn_prompt_info)%{$reset_color%}%{$fg_bold[blue]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[red]%}${ex}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}] "

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[green]%}[%{$fg[cyan]%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[green]%}] %{$fg[red]%}${ex}%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg[green]%}] "