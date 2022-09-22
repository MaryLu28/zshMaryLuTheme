source ~/.oh-my-zsh/custom/themes/maryluTheme/zsh-git-prompt/zshrc.sh

# Icons
FA_I_HOME="\uf015"
FA_I_FOLDER="\uf07c"

FA_I_GIT_BRANCH="\uf126"
FA_I_UNSTAGED="\uf06a" #exclamation-circle
FA_I_STAGED="\uf055" #plus-circle


FA_I_CLOCK="\uf017"
FA_I_CALENDAR="\uf133"

FA_I_WIFI="\uF09E"
FA_I_ETH0="\uF0E8" #sitemap
FA_I_DSCD="\uF0E7" #bolt
FA_I_ACTV="\uF110" #spinner
FA_I_FAIL=""
FA_I_ROOT="\uF085" #gears
FA_I_NODE="\uF0C3" #icon-beaker
FA_I_GRPH="\uF080" #chart-bar
FA_I_SPED="\uF0E4" #tachometer
FA_I_OTBD="\uF08B" #sign-out
FA_I_INBD="\uF090" #sign-in



LEFT_CURRENT_BG='NONE'
RIGHT_CURRENT_BG='NONE'

LEFT_SEGMENT_SEPARATOR='\uE0B0'
RIGHT_SEGMENT_SEPARATOR='\uE0B2'

ZSH_THEME_GIT_PROMPT_DIRTY="±"
ZSH_THEME_GIT_PROMPT_CLEAN="✨"
ZSH_THEME_GIT_PROMPT_STAGED="$FA_I_STAGED"
ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_UNSTAGED="$FA_I_UNSTAGED"
ZSH_THEME_GIT_PROMPT_CHANGED="\uf044" #pen-to-square
ZSH_THEME_GIT_PROMPT_STASHED='\uf024' #Flag
ZSH_THEME_GIT_PROMPT_AHEAD='⇡'
ZSH_THEME_GIT_PROMPT_BEHIND='⇣'

# ZSH_THEME_GIT_PROMPT_UNTRACKED=' %F{yellow}% ●'
# ZSH_THEME_GIT_PROMPT_STASHED='⚑'
ZSH_THEME_GIT_PROMPT_DIVERGED='⚡'
ZSH_THEME_GIT_PROMPT_ADDED="✚"
# ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_DELETED="✖"
ZSH_THEME_GIT_PROMPT_RENAMED="➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="═"


# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
left_prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $LEFT_CURRENT_BG != 'NONE' && $1 != $LEFT_CURRENT_BG ]]; then
    echo -n " %{$bg%F{$LEFT_CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  LEFT_CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

right_prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"

  if [[ $RIGHT_CURRENT_BG != 'NONE' && $1 != $RIGHT_CURRENT_BG ]]; then
    echo -n "%{%F{$1}%}$RIGHT_SEGMENT_SEPARATOR%{$bg%}%{$fg%}"
  else
    echo -n "%K{$RIHT_CURRENT_BG}%F{$1}$RIGHT_SEGMENT_SEPARATOR%{$bg%}%{$fg%}"
  fi

  RIGHT_CURRENT_BG=$1

  [[ -n $3 ]] && echo -n $3
}

# End the prompt, closing any open segments
left_prompt_end() {
  if [[ -n $LEFT_CURRENT_BG ]]; then
    echo -n " %{%k%F{$LEFT_CURRENT_BG}%}$LEFT_SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  LEFT_CURRENT_BG=''
}

# End the prompt, closing any open segments
right_prompt_end() {
  if [[ -n $RIGHT_CURRENT_BG ]]; then
    echo -n " %{%K{$RIGHT_CURRENT_BG}%}$RIGHT_SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  RIGHT_CURRENT_BG=''
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown

# Context: user@hostname (who am I and where am I)
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    left_prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Git: branch/detached head, dirty status
prompt_git() {
  (( $+commands[git] )) || return
  if [[ "$(git config --get oh-my-zsh.hide-status 2>/dev/null)" = 1 ]]; then
    return
  fi
  () {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
  }
  local ref dirty mode repo_path

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    repo_path=$(git rev-parse --git-dir 2>/dev/null)
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git rev-parse --short HEAD 2> /dev/null)"

    # if [[ -n $dirty ]]; then
    #   left_prompt_segment 043 black
    # else
    #   left_prompt_segment 085 black
    # fi

    if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
      left_prompt_segment 043 black
    else
      left_prompt_segment 119 black
    fi

    if [[ -e "${repo_path}/BISECT_LOG" ]]; then
      mode=" <B>"
    elif [[ -e "${repo_path}/MERGE_HEAD" ]]; then
      mode=" >M<"
    elif [[ -e "${repo_path}/rebase" || -e "${repo_path}/rebase-apply" || -e "${repo_path}/rebase-merge" || -e "${repo_path}/../.dotest" ]]; then
      mode=" >R>"
    fi

    # echo -n "$FA_I_GIT_BRANCH ${ref/refs\/heads\//} $dirty${mode}"$(git_prompt_status)
    echo -n "$FA_I_GIT_BRANCH ${ref/refs\/heads\//}$dirty${mode}"$(git_super_status)
  fi
}

# Dir: current working directory
prompt_dir() {
  left_prompt_segment 199 black "$FA_I_FOLDER %2~"
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local -a symbols

  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && right_prompt_segment black default "$symbols"
}

# current time
current_time() {
  right_prompt_segment 044 black " $FA_I_CLOCK %D{%I:%M %p}"
}

# current time
current_date() {
  right_prompt_segment 063 black " $FA_I_CALENDAR %D{%d/%m/%y} "
}

left_build_prompt() {
  prompt_context
  prompt_dir
  prompt_git
  left_prompt_end
}

right_build_prompt() {
  prompt_status
  return_status
  current_date
  current_time
  right_prompt_end
}

#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

return_status() {
  right_prompt_segment 235 white " %(?.%{$fg[green]%}✔.%{$fg[red]%}✘%f) "
}

PROMPT='%{%f%b%k%}$(left_build_prompt) '
RPROMPT='%{%f%b%k%}$(right_build_prompt)'
