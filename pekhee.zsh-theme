with_color () {
  echo -n "$fg_bold[$1]"
  echo -n "$2"
  echo -n "$reset_color"
}

enclose () {
  with_color blue "["
  with_color default "$1"
  with_color blue "]"
}

main_prompt () {
  echo -n "%n" # User name
  echo -n ":"
  echo -n "%~"
  echo -n $(rvm_prompt_info)
}

PROMPT='$(enclose $(main_prompt))
 $ '

# git theming
ZSH_THEME_GIT_PROMPT_PREFIX="$fg_bold[green]("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY=" X"