# Nocorrect Aliases
# -----------------
unsetopt correct_all

# System Level
# ------------
alias ..='cd ..'
# alias hdu='du -d 1 -h | sort -h'
# alias web='w3m https://duckduckgo.com'

# Directories
alias l='lsd -lah --date relative'
alias d="cd $HOME/development/"
alias dd="cd $HOME/development/dotfiles"

# Git
# -----------------
# Brought over from oh-my-zsh's git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git checkout main'
alias gcs='git checkout staging'
alias gco='git checkout'
alias gd='git diff'
alias gst='git status'
alias grbc='git rebase --continue'
# End: Brought over from oh-my-zsh's git aliases

# Other aliases?
alias gp='git push'
alias gs='git stash'
alias gsl='git stash list'
alias gss='git stash show -p'
alias uncommit='git reset --soft HEAD~1'

# Development tools
alias tl='tmux ls'
alias ta='tmux attach -t $*'
alias lg='lazygit'

# Frameworks
alias b='bundle exec $*'
alias rc='bin/rails console'
# alias rdbc='bin/rails dbconsole'
# alias btest='PARALLEL_WORKERS=4 bundle exec rails test'

# PERSONAL TOOLS
# mansearch () {
#   man -k . | fzf --preview "echo {} | awk '{print $1}' | xargs -r man" | awk '{print $1}' | xargs -r man
# }

# brewdeps () {
#   brew leaves | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
# }

# Edit/source this file
# alias ea='hx ~/development/dotfiles/zsh/shortcuts.zsh'
# alias ea_source='source $HOME/development/dotfiles/zsh/shortcuts.zsh'
# alias claude="/Users/noah/.claude/local/claude"

# alias dbg="devbox global"
