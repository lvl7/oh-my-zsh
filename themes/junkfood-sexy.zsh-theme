# Junkfood Invader theme
# --------------------------
# Lets not export all these colors unless we have to
if [ -z "$BLACK" ]; then
  if tput setaf 1 &> /dev/null; then
    tput sgr0

    BLACK=$(tput setaf 0)
    RED=$(tput setaf 1)
    GREEN=$(tput setaf 2)
    YELLOW=$(tput setaf 3)
    BLUE=$(tput setaf 4)
    MAGENTA=$(tput setaf 5)
    CYAN=$(tput setaf 6)
    WHITE=$(tput setaf 7)

    BRIGHT=$(tput bold)
    RESET=$(tput sgr0)
    BLINK=$(tput blink)
    REVERSE=$(tput smso)
    UNDERLINE=$(tput smul)

    PURPLE=$(tput setaf 5)
    ORANGE=$(tput setaf 1)
    LIME_YELLOW=$(tput setaf 2)
    POWDER_BLUE=$(tput setaf 4)

    if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
      GREEN=$(tput setaf 190)
      MAGENTA=$(tput setaf 9)
      ORANGE=$(tput setaf 172)
      PURPLE=$(tput setaf 141)
      WHITE=$(tput setaf 254)
      LIME_YELLOW=$(tput setaf 190)
      POWDER_BLUE=$(tput setaf 153)
    fi
  else
    BLACK="\033[0;30m"
    RED="\033[0;31m"
    GREEN="\033[0;32m"
    YELLOW="\033[0;33m"
    BLUE="\033[0;34m"
    MAGENTA="\033[0;35m"
    CYAN="\033[0;36m"
    WHITE="\033[0;37m"

    RESET="\033[00m"
    BOLD=""

    ORANGE="\033[1;31m"
    PURPLE="\033[1;35m"
    LIME_YELLOW="\033[1;32m"
    POWDER_BLUE="\033[1;34m"
  fi

  colors=(BLACK \
          RED \
          GREEN \
          YELLOW \
          BLUE \
          MAGENTA \
          CYAN \
          WHITE \
          RESET \
          BOLD \
          ORANGE \
          PURPLE \
          LIME_YELLOW \
          POWDER_BLUE)

  for color in $colors; do
    export $color
  done
fi

ex='✗✗✗ '
check='✔ '
return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"


if [[ $(uname -s) == 'Darwin' ]]; then
    # I never really work as root on the ole macbook
    front_thingy='%(?.🍔  .🍟  '
else
    front_thingy="%(?.%{$fg[white]%}%(!.#.→)%{$reset_color%} .%{$fg[red]%}%(!.#.→)%{$reset_color%} )"
fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[white]%}on "
ZSH_THEME_GIT_PROMPT_CLEAN="[git]${GREEN}${check}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="[git]%{$fg[red]%}${ex}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

ZSH_THEME_SVN_PROMPT_PREFIX="%{$fg[white]%}on "
ZSH_THEME_SVN_PROMPT_CLEAN="[svn]${GREEN}${check}%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_DIRTY="[svn]%{$fg[red]%}${ex}%{$reset_color%}"
ZSH_THEME_SVN_PROMPT_SUFFIX="%{$reset_color%}"

PROMPT='\
${BRIGHT}${MAGENTA}%n \
${WHITE}at $ORANGE%m \
${WHITE}in $GREEN%~ ${WHITE}\
$(git_prompt_info)\
$(svn_prompt_info)\
$NORMAL
$front_thingy'

PROMPT2="$ORANGE→ $RESET"
RPS1='${return_code}'