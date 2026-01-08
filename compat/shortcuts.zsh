# Nocorrect Aliases
unsetopt correct_all

# -- Core --
alias ..='cd ..'
alias l='lsd -lah --date relative'
alias d="cd $HOME/development/"
# alias dd="cd $HOME/development/dotfiles"

# -- Git (Brought over from oh-my-zsh's git aliases) --
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git checkout main'
alias gcs='git checkout staging'
alias gco='git checkout'
alias gd='git diff'
alias gst='git status'

# -- Git (From other sources?) --
alias gp='git push'
alias gs='git stash'
# alias gsl='git stash list'
alias gss='git stash show -p'
alias uncommit='git reset --soft HEAD~1'

# Development tools
alias tl='tmux ls'
alias ta='tmux attach -t $*'
alias lg='lazygit'

# -- Other utilities --
alias hdu='du -d 1 -h | sort -h'
alias web='w3m https://duckduckgo.com'

# Frameworks
alias b='bundle exec $*'
alias rc='bin/rails console'

# Edit/source this file
# alias ea='hx ~/development/dotfiles/zsh/shortcuts.zsh'
# alias ea_source='source $HOME/development/dotfiles/zsh/shortcuts.zsh'
