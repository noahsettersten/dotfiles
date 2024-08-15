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
alias psfind="ps ax|grep -v grep|grep -iE"
# alias cpu='top -o cpu'
# alias mem='top -o rsize'

# Directories
# alias l='ls -lahG'
alias l='lsd -lah'

# Git
# -----------------
# alias gg='git goggles'
alias gwc='git whatchanged --no-merges --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
alias gt='git tag'
alias gtl='git tag -l'
alias gtlr='git ls-remote --tags'
# alias gbm='git branch --merged'
# alias gbnm='git branch --no-merged'
alias gf='git fetch'
alias glog='git log --oneline --graph'
# alias glog2="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold yellow)%h%C(reset) %C(bold yellow)%d%C(reset) %C(white)%s%C(reset) - %C(bold green)(%ar)%C(reset)'"
# alias ptl='bundle exec rake pt:list'
# alias gmnff='git merge --no-edit --no-ff $*'
# alias gbc='git rev-parse --abbrev-ref HEAD 2>/dev/null | cut -d"/" -f 2 | tr -d "\n" | pbcopy' # copies the current branch to your clipboard (on os x)
alias gp='git push;git push --tags'
alias gs='git stash'
alias gsts='git status --short -b'
# alias gsp='git stash pop'
alias gsl='git stash list'
alias gss='git stash show -p'
alias gflags='~/development/dotfiles/scripts/grep_comment_flags.sh'
alias gflagsd='~/development/dotfiles/scripts/grep_comment_flags_diff.sh'
# alias unstage='git reset HEAD --'
alias uncommit='git reset --soft HEAD~1'
# alias recommit='git commit --amend --no-edit'

# alias gbranch_changes='git diff --name-only main'

# Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`
# Then view the contets of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
alias glsearch='git log --all --full-history -- $*'

alias gafzf='git add $(git status --short | cut -c 4- | fzf)'

alias lg='lazygit'

# Postgres
# --------
alias pgtail='tail -f /usr/local/var/log/postgres.log'

# Tmux
# ----
alias tl='tmux ls'
alias ta='tmux attach -t $*'
# alias tk='tmux kill-session -t $*'
# alias tks='tmux kill-server'

# Editors
# ---
alias nv='nvim'
alias v='nvim'
alias slimvim='nvim -u NONE -U NONE -N $*'
alias em='emacs -nw'

# RAILS
# -----
alias b='bundle exec $*'
# alias rdm='bin/rake db:migrate'
alias rc='bin/rails console'
alias rdbc='bin/rails dbconsole'
alias tpd='tail ~/Library/Logs/puma-dev.log'

# OTHER (ELIXIR / PHOENIX, NODE, ...)
# ----------------
alias phx='iex -S mix phx.server'
alias fly_ip='fly dig -s aaaa $*'
alias fly_livebook='ERL_AFLAGS="-proto_dist inet6_tcp" livebook server --name livebook@127.0.0.1'

# alias herokuiex='heroku run iex -S mix'
# alias webserver='python -m SimpleHTTPServer'
alias yb='yarn build'

alias pyactivate='source ./.env/bin/activate'
alias pydeactivate='source ./.env/bin/deactivate'

# VAGRANT
# -------
alias vup='vagrant up'
alias vdf='vagrant destroy -f'
alias vssh='vagrant ssh'
alias vsus='vagrant suspend'

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
# alias ql='qlmanage -px &>/dev/null'
alias lsrubyversions='find . -name .ruby-version -exec cat {} \;'
alias loc='cloc . --exclude-dir=node_modules'
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
