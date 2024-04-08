ZSH_THEME_GIT_PROMPT_PREFIX="%{$bg[green]$fg_bold[black]%} %{$fg_bold[black]%}\xee\x82\xa0 "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg_bold[red]%}%{$fg_bold[black]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

function nord_prompt {
  prompt=$(print -P '%{$bg[cyan]$fg_bold[black]%} %n %{$bg[black]$fg_bold[cyan]%} %{$bg[black]$fg_bold[blue]%}%3c %{$reset_color$fg_bold[black]%}$(git_prompt_info)');
  prompt_base=$(print -P '%n  %3c ');
  prompt_size=${#prompt_base}

  time_base=$(print -P ' %D{%F}  %T  %m ');
  time_size=${#time_base}

  branch=$(git_current_branch)
  branch_size=${#branch}
  if [[ branch_size -ne 0 ]]; then
    (( branch_size = branch_size + 5 ))
    if [[ -n $(git status -s 2> /dev/null) ]]; then
      (( branch_size = branch_size + 2 ))
    fi
  fi

  (( spare_width = ${COLUMNS} - ${time_size} - ${prompt_size} - ${branch_size} ))

  if [[ spare_width -le 0 ]]; then
    prompt="$prompt
 "
    (( spare_width = ${COLUMNS} - ${time_size} ))
  fi

  for (( i=1; i<${spare_width}; i+=1 )); do
    prompt="$prompt "
  done

  print -P '$prompt%{$reset_color$fg[black]%}$bg[black]$fg[white]%} %D{%F}  %T %{$fg[cyan]%{$bg[cyan]$fg_bold[black] %m '
}

#%{$bg[black]$fg_bold[cyan]%} %m \

PROMPT='\
$(nord_prompt)
%{$reset_color$fg_bold[white]%}› %{$reset_color%}'
