abbr -a .. cd ..
abbr -a hdu "du -d 1 -h | sort -h"
#abbr -a web w3m https://duckduckgo.com
abbr -a l lsd -lah
#abbr -a findgit find . -type d -exec test -e '{}/.git' ';' -print -prune

# Git (Brought over from oh-my-zsh's git aliases)
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
#abbr --add gcm git checkout main
abbr -a gcd git checkout dev
abbr -a gco git checkout
abbr -a gd git diff
# abbr --add gr='git remote'
abbr -a gst git status
abbr -a grbc git rebase --continue

# Git (From other sources?)
# alias gwc='git whatchanged --no-merges --pretty=format:"%Cgreen%h%Creset%x09%an%x09%Cblue%ar%Creset%x09%s"'
abbr -a gp git push
abbr -a gs git stash
abbr -a gsl git stash list
abbr -a gss git stash show -p
abbr -a uncommit 'git reset --soft HEAD~1'

#abbr -a gd_branch git diff --name-only main

# Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`
# Then view the contets of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
# alias glsearch='git log --all --full-history -- $*'
# alias gafzf='git add $(git status --short | cut -c 4- | fzf)'
abbr -a lg lazygit

# Tmux
abbr -a tl tmux ls
abbr -a ta tmux attach -t $argv

# Editors
abbr -a v nvim
#abbr -a slimvim nvim -u NONE -U NONE -N $argv
#abbr -a em emacs -nw

#alias nvp='curl https://nvim.sh/s/$1'
#alias pgtail='tail -f /usr/local/var/log/postgres.log'

# Frameworks (Rails, Elixir/Phoenix, Node, ...)
abbr -a b bundle exec $argv
# alias rdm='bin/rake db:migrate'
# alias rc='bin/rails console'
# alias rdbc='bin/rails dbconsole'
# alias tpd='tail ~/Library/Logs/puma-dev.log'

# alias phx='iex -S mix phx.server'
# alias fly_ip='fly dig -s aaaa $*'
# alias fly_livebook='ERL_AFLAGS="-proto_dist inet6_tcp" livebook server --name livebook@127.0.0.1'
# alias docker_livebook="docker run -p 8080:8080 -p 8081:8081 --pull always -u $(id -u):$(id -g) -v $(pwd):/data ghcr.io/livebook-dev/livebook"
# alias herokuiex='heroku run iex -S mix'

# alias webserver='python -m SimpleHTTPServer'
abbr -a yb yarn build

# See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA
#alias git_most_modified='git log --format=format: --name-only --since=12.month| egrep -v '^$' | sort | uniq -c | sort -nr | head -50'
