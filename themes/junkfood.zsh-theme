# ------------------------------------------------------------------------
# Tyler Cipriani 
# oh-my-zsh theme
# Totally ripped-off Dallas theme—svn & git required.
# ------------------------------------------------------------------------

# Grab the current username 
JUNKFOOD_CURRENT_USER_="%{$fg_bold[white]%}# %{$fg_bold[green]%}%n%{$fg_bold[white]%}. %{$reset_color%}"
#
# Grab the current machine name 
JUNKFOOD_MACHINE_="%{$fg_bold[blue]%}%m%{$fg_bold[white]%}. %{$reset_color%}"

# Grab the current date (%W) and time (%t):
JUNKFOOD_TIME_="%{$fg_bold[yellow]%}%W%{$reset_color%} at %{$fg_bold[magenta]%}%T%{$fg_bold[white]%}. %{$reset_color%}"
#
# Grab the current filepath, use shortcuts: ~/Desktop
# Append the current git branch and svn branch, if in a git repository: ~aw at master/master
JUNKFOOD_LOCA_="%{$fg[cyan]%}%~\$(git_prompt_info)\$(svn_prompt_info)%{$reset_color%}"
#
# For the git and svn prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}. %{$reset_color%}%{$fg[white]%}git at %{$fg_bold[white]%}"
ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg_bold[white]%}. %{$reset_color%}%{$fg[white]%}svn at %{$fg_bold[white]%}"

# Close it all off by resetting the color and styles.
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"

# Do nothing if the branch is clean (no changes).
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
ZSH_THEME_SVN_PROMPT_CLEAN="%{$fg_bold[green]%}✔"

# Add 3 cyan ✗s if this branch is diiirrrty! Dirty branch!
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg_bold[red]%}✗✗✗"

# Put it all together!
PROMPT="$JUNKFOOD_CURRENT_USER_$JUNKFOOD_MACHINE_$JUNKFOOD_TIME_$JUNKFOOD_LOCA_
  "
