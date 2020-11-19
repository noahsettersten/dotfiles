function ruby_version() {
    echo $PATH | perl -n -e'/ruby-([0-9]\.[0-9]\.[0-9])/ && print $1'
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

ZSH_THEME_GIT_PROMPT_PREFIX=" | %{%F{magenta}%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{%f%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{%F{green}%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{%F{blue}%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{%F{red}%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{%F{magenta}%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{%F{yellow}%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{%F{cyan}%} ✭"

# ZSH_THEME_GIT_STASHES=$(sh $HOME/.dotfiles/scripts/git_stash_summary.sh)

THEME_USER="%{%B%F{magenta}%}%n%{%b%f%}"
THEME_DIRECTORY="%{%B%F{green}%}%~%{%b%f%}"
THEME_RETURN_CODE="%(?..%{%F{red}%}%? ↵%{%f%} )"

# TODO: Show the elapsed run time for last command in Zsh prompt:
# https://www.reddit.com/r/linux/comments/1pooe6/zsh_tip_notify_after_long_processes/
# https://gist.github.com/jpouellet/5278239

set_prompt () {
  PROMPT="$THEME_USER $THEME_DIRECTORY $(git_prompt_info) $THEME_RETURN_CODE $(git_prompt_status)%{%b%f%}
$(prompt_char) "

  RUBY_PROMPT_="%{$fg_bold[blue]%}ruby:(%{$fg[green]%}$(ruby_version)%{$fg_bold[blue]%})%{$reset_color%} "
  RPROMPT="$RUBY_PROMPT_"
}

[[ -z $precmd_functions ]] && precmd_functions=() precmd_functions=($precmd_functions set_prompt)
set_prompt
