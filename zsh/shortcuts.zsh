# Nocorrect Aliases
# -----------------
unsetopt correct_all

# System Level
# ------------
alias uldb='sudo /usr/libexec/locate.updatedb' #update the location database
alias reindex='sudo mdutil -E /'
alias flush_dns='dscacheutil -flushcache'
alias fixbrew='sudo chown -R `whoami` /usr/local'
alias c='clear'
alias cd..='cd ..'
alias ..='cd ..'
alias clera='clear'
alias xit='exit'
alias fixcam='sudo killall VDCAssistant'
alias hdu='du -d 1 -h | sort -h'
alias myps='ps -ef | awk "/noah/ && !/fsevent_watch/ && !/Firefox/ && !/Dropbox/ && !/Spotify/ && !/1Password/ && !/CrashPlan/"'
alias psfind="ps ax|grep -v grep|grep -iE"
alias cpu='top -o cpu'
alias mem='top -o rsize'

# Directories
alias l='ls -lahG'

# Git
# -----------------
alias gg='git goggles'
alias gwc='git whatchanged --no-merges --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
alias gt='git tag'
alias gtl='git tag -l'
alias gtlr='git ls-remote --tags'
alias gbm='git branch --merged'
alias gbnm='git branch --no-merged'
alias gf='git fetch'
alias glog='git log --oneline --graph'
alias glog2="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold yellow)%h%C(reset) %C(bold yellow)%d%C(reset) %C(white)%s%C(reset) - %C(bold green)(%ar)%C(reset)'"
alias ptl='bundle exec rake pt:list'
alias gmnff='git merge --no-edit --no-ff $*'
alias gbc='git rev-parse --abbrev-ref HEAD 2>/dev/null | cut -d"/" -f 2 | tr -d "\n" | pbcopy' # copies the current branch to your clipboard (on os x)
alias gp='git push;git push --tags'
alias gs='git stash'
# alias gst='git status --short'
alias gsts='git status --short -b'
alias gsp='git stash pop'
alias gsl='git stash list'
alias gss='git stash show -p'
alias grepflags='~/.dotfiles/scripts/grep_comment_flags.sh'
alias grepflagsdiff='~/.dotfiles/scripts/grep_comment_flags_diff.sh'
alias unstage='git reset HEAD --'
alias uncommit='git reset --soft HEAD~1'
alias recommit='git commit --amend --no-edit'

# Postgres
# --------
alias pgtail='tail -f /usr/local/var/log/postgres.log'

# Tmux
# ----
alias tl='tmux ls'
alias ta='tmux attach -t $*'
alias tk='tmux kill-session -t $*'
alias tks='tmux kill-server'

# Wemux
# -----
alias wl='wemux list'
alias wj='wemux join $*'
alias wr='wemux rogue $*'
alias wp='wemux pair $*'
alias wsj='f() { wemux join $1; wemux start }; f'
alias wk='wemux stop $*'
alias wks='wemux stop'

# Editors
# ---
alias v='nvim'
alias slimvim='nvim -u NONE -U NONE -N $*'
alias vim_solarized='nvim -c "set background=dark" -c "colorscheme solarized" $*'
alias em='emacs -nw'

# RAILS
# -----
alias b='bundle exec $*'
alias rdm='bin/rake db:migrate'
alias rc='bin/rails console'
alias rdbc='bin/rails dbconsole'
alias kr='kill -9 `cat tmp/pids/server.pid; echo;`'
alias wph='bin/webpack-dev-server --hot --corejs 3.6.0 '

# OTHER (ELIXIR / PHOENIX, NODE, ...)
# ----------------
alias phx='iex -S mix phx.server'
alias herokuiex='heroku run iex -S mix'
alias nombomb='trash node_modules; bower cache clean && trash bower_components'
alias webserver='python -m SimpleHTTPServer'

# PAIR
#-----
unpair () { gh-auth remove --users=$1 }

# PERSONAL TOOLS
# --------------
alias pipt='pip --trusted-host pypi.python.org'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO'
alias spotify_status='spotify status | grep -E "(Artist.*$|Track.*$)"'
alias spotify_track='spotify status | sed -n "s/Track: //p"'
alias spotify_current_track='~/.dotfiles/scripts/spotify_current_track.sh'
alias slinvoke='serverless invoke local -f $*'
alias todos='ack --nobreak --nocolor "(TODO|FIXME):"|sed -E "s/(.*:[[:digit:]]+):.*((TODO|FIXME):.*)/\2 :>> \1/"|grep -E --color=always ":>>.*:\d+"'
alias ql='qlmanage -px &>/dev/null'

brewdeps () {
  brew leaves | while read cask; do echo -n $fg[blue] $cask $fg[white]; brew deps $cask | awk '{printf(" %s ", $0)}'; echo ""; done
}

# Edit/source this file
alias ea='vim ~/.dotfiles/zsh/shortcuts.zsh'
alias ea_source='source $HOME/.dotfiles/zsh/shortcuts.zsh'
