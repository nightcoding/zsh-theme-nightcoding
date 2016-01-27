# Author: Martin Häusler, hello@nightcoding.de
# Version: 0.0.1
# Theme: nightcoding

PROMPT='
$(_ruby_version)
%1~ $(git_prompt_info) %{$fg[red]%}➜%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"

ZSH_THEME_RVM_PROMPT_PREFIX=""
ZSH_THEME_RVM_PROMPT_SUFFIX=""

function _ruby_version() {
  if {echo $fpath | grep -q "plugins/rvm"}; then
    echo "%{$fg[white]%}$(rvm_prompt_info)%{$reset_color%}"
  fi
}

