function get_ret_status() {
  icon="λ"
  ret_status="%(?:%{$fg_bold[green]%}$icon:%{$fg_bold[red]%}$icon%s)"
  echo $ret_status
}
 
function get_pwd(){
  git_root=$PWD
  while [[ $git_root != / && ! -e $git_root/.git ]]; do
    git_root=$git_root:h
  done
  if [[ $git_root = / ]]; then
    unset git_root
    prompt_short_dir=%~
  else
    parent=${git_root%\/*}
    prompt_short_dir=${PWD#$parent/}
  fi
  echo $prompt_short_dir
}

function get_git_prompt(){
  git_prompt=$(git_prompt_info)
  modified_git_prompt=" $git_prompt"
  if [[ $git_prompt == "" ]]; then
    modified_git_prompt=""
  fi
  echo $modified_git_prompt
}

PROMPT='$(get_ret_status) %{$fg[white]%}$(get_pwd)$(get_git_prompt)%{$reset_color%} '
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⨯"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
