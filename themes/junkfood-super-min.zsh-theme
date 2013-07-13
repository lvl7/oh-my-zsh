# ------------------------------------------------------------------------
# Tyler Cipriani 
# oh-my-zsh theme
# Totally ripped-off Dallas theme—svn & git required.
# ------------------------------------------------------------------------

# Grab the current username 
#bold JUNKFOOD_CURRENT_USER_="%{$fg_bold[white]%}# %{$fg_bold[green]%}%n%{$fg_bold[white]%}. %{$reset_color%}"
JUNKFOOD_CURRENT_USER_="%{$fg_bold[white]%}#%{$reset_color%} %{$fg[red]%}%n%{$reset_color%} on "

# Grab the current machine name 
#bold JUNKFOOD_MACHINE_="%{$fg_bold[blue]%}%m%{$fg_bold[white]%}. %{$reset_color%}"
JUNKFOOD_MACHINE_="%{$fg[yellow]%}%m%{$reset_color%} in "

# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch and svn branch, if in a git repository: ~aw at master/master
#JUNKFOOD_LOCA_="%{$fg[green]%}%~\$(git_prompt_info)\$(svn_prompt_info)%{$reset_color%}"
JUNKFOOD_LOCA_="%{$fg[yellow]%}%~\$(git_prompt_info)\$(svn_prompt_info)%{$reset_color%}"

JUNKFOOD_SYMBOL=" %{$fg[green]%}⚛%{$reset_color%} "
#
# For the git and svn prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} using %{$fg_bold[white]%}"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$reset_color%} using %{$fg_bold[white]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
#bold ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
#bold ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}[git]%{$reset_color%}%{$fg[green]%}✔"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$reset_color%}[svn]%{$reset_color%}%{$fg[green]%}✔"

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
#bold ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"
#bold ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}[git]%{$reset_color%}%{$fg[red]%}✗✗✗"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$reset_color%}[svn]%{$reset_color%}%{$fg[red]%}✗✗✗"

# Put it all together!
#PROMPT="$JUNKFOOD_CURRENT_USER_$JUNKFOOD_MACHINE_$JUNKFOOD_LOCA_
#  "
PROMPT="$JUNKFOOD_SYMBOL$JUNKFOOD_LOCA_
   "
