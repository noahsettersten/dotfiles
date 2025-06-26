# Nocorrect Aliases
# -----------------
unsetopt correct_all

# System Level
# ------------
# alias uldb='sudo /usr/libexec/locate.updatedb' #update the location database
# alias reindex='sudo mdutil -E /'
# alias flush_dns='dscacheutil -flushcache'
# alias c='clear'
alias ..='cd ..'
# alias fixcam='sudo killall VDCAssistant'
alias hdu='du -d 1 -h | sort -h'
alias mc='musikcube'
alias psfind="ps ax|grep -v grep|grep -iE"
# alias cpu='top -o cpu'
# alias mem='top -o rsize'
alias web='w3m https://duckduckgo.com'

# Directories
alias l='lsd -lah --date relative'
alias findgit="find . -type d -exec test -e '{}/.git' ';' -print -prune"
alias d="cd $HOME/development/"
alias gg="cd $HOME/Code/groups"
alias dd="cd $HOME/development/dotfiles"

# Git
# -----------------
# Brought over from oh-my-zsh's git aliases
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gcm='git checkout main'
alias gcd='git checkout dev'
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
alias gflags='~/development/dotfiles/scripts/grep_comment_flags.sh'
alias gflagsd='~/development/dotfiles/scripts/grep_comment_flags_diff.sh'
alias uncommit='git reset --soft HEAD~1'
alias loc='cloc --vcs git .'
alias diffm='git diff --name-only main'

# Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`
# Then view the contets of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
alias glsearch='git log --all --full-history -- $*'

alias gafzf='git add $(git status --short | cut -c 4- | fzf)'

alias lg='lazygit'

# Tmux
# ----
alias tl='tmux ls'
alias ta='tmux attach -t $*'

# Editors
# ---
alias v='nvim'
# alias slimvim='nvim -u NONE -U NONE -N $*'
# alias em='emacs -nw'

# Search nvim.sh directory
# alias nvp_tag='curl https://nvim.sh/t/$1'
alias nvp='curl https://nvim.sh/s/$1'

# RAILS
# -----
alias b='bundle exec $*'
# alias rdm='bin/rake db:migrate'
alias rc='bin/rails console'
alias rdbc='bin/rails dbconsole'
# alias tpd='tail ~/Library/Logs/puma-dev.log'
alias btest='PARALLEL_WORKERS=4 bundle exec rails test'

# OTHER (ELIXIR / PHOENIX, NODE, ...)
# ----------------
# alias phx='iex -S mix phx.server'
# alias fly_ip='fly dig -s aaaa $*'
# alias fly_livebook='ERL_AFLAGS="-proto_dist inet6_tcp" livebook server --name livebook@127.0.0.1'
# alias docker_livebook="docker run -p 8080:8080 -p 8081:8081 --pull always -u $(id -u):$(id -g) -v $(pwd):/data ghcr.io/livebook-dev/livebook"

# alias herokuiex='heroku run iex -S mix'
# alias webserver='python -m SimpleHTTPServer'
alias yb='yarn build'

# alias pyactivate='source ./.env/bin/activate'
# alias pydeactivate='source ./.env/bin/deactivate'

# VAGRANT
# -------
# alias vup='vagrant up'
# alias vdf='vagrant destroy -f'
# alias vssh='vagrant ssh'
# alias vsus='vagrant suspend'

# DOCKER
# ------
alias d_pb='docker buildx prune'
alias prune_docker='docker system prune -a'
alias db='docker build . -t $2'
alias dr='docker run --env-file=./.env $*'
alias docker_run_bash='docker run -it --entrypoint /bin/bash $*'
alias docker_exec_bash='docker exec -it $1 /bin/bash'
alias build_dots='docker build -t dotfiles:latest ~/development/dotfiles'
alias run_dots='docker run -it --entrypoint /bin/zsh dotfiles:latest'

alias dockerlogs='docker logs --tail 80 -f $*'
alias dockersh="docker run --rm -it --entrypoint=/bin/bash $0"

# PERSONAL TOOLS
# --------------
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO'
alias todos='ag --nobreak --nocolor "(TODO|FIXME):"|sed -E "s/(.*:[[:digit:]]+):.*((TODO|FIXME):.*)/\2 :>> \1/"|grep -E --color=always ":>>.*:\d+"'
alias lsrubyversions='find . -name .ruby-version -exec cat {} \;'
# alias loc='cloc . --exclude-dir=node_modules'
alias floc='cloc --by-file --exclude-dir=test,tmp --include_ext=rb,c,java .'


# See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA
alias git_most_modified='git log --format=format: --name-only --since=12.month| egrep -v '^$' | sort | uniq -c | sort -nr | head -50'

mansearch () {
  man -k . | fzf --preview "echo {} | awk '{print $1}' | xargs -r man" | awk '{print $1}' | xargs -r man
}

# Configure similar tools for AWK and JQ manipulation of content
# awkexplore () {
  # echo '' | fzf --print-query --preview 'echo "a\nb\nc\nd" | awk {q}'
# }
# https://github.com/pawelduda/fzf-live-repl/pull/5/files

brewdeps () {
  brew leaves | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
}

# Edit/source this file
alias ea='hx ~/development/dotfiles/zsh/shortcuts.zsh'
alias ea_source='source $HOME/development/dotfiles/zsh/shortcuts.zsh'


alias claude="/Users/noah/.claude/local/claude"
alias dbg="devbox global"
