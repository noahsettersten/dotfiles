# -- Core --
abbr -a .. cd ..
abbr -a l lsd -lah --date relative
abbr -a d cd $HOME/development/
abbr -a drive cd $HOME/Library/CloudStorage/ProtonDrive-noah.settersten@proton.me-folder

# -- Git (Brought over from oh-my-zsh's git aliases) --
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
abbr -a gcm git checkout main
abbr -a gcs git checkout staging
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gst git status
abbr -a grbc git rebase --continue

# -- Git (From other sources?) --
abbr -a gp git push
abbr -a gs git stash
abbr -a gsl git stash list
abbr -a gss git stash show -p
abbr -a uncommit 'git reset --soft HEAD~1'

# Show files that have been changed in this branch
abbr -a diffm git diff --name-only main

# -- Extended Git --
# Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`
# Then view the contents of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
#abbr -a glsearch 'git log --all --full-history --'
abbr -a flags '~/development/dotfiles/scripts/grep_comment_flags.sh'

abbr -a gafzf 'git add $(git status --short | cut -c 4- | fzf)'

# See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA
abbr -a git_most_modified "git log --format=format: --name-only --since=12.month| egrep -v '^\$' | sort | uniq -c | sort -nr | head -50"
abbr -a lg lazygit

# Tmux
abbr -a tl tmux ls
abbr -a ta tmux attach -t $argv

# Editors
abbr -a v nvim
# abbr -a nvp "curl https://nvim.sh/s/"

# -- Frameworks --
abbr -a b bundle exec $argv
#abbr -a yb yarn build
abbr -a rc 'bin/rails console'
abbr -a rdbc 'bin/rails dbconsole'
# abbr -a btest 'PARALLEL_WORKERS=4 bundle exec rails test'
abbr -a test_branch 'bundle exec rails test $(git diff --name-only main | grep "^test")'
abbr -a rt "$HOME/development/dotfiles/scripts/rubotree_changed.sh"

abbr -a d "cd $HOME/development/"
abbr -a dd "cd $HOME/development/dotfiles"

# -- Utilities --
abbr -a hdu "du -d 1 -h | sort -h"

# -- Other --
abbr -a loc 'cloc --vcs git .'
abbr -a floc 'cloc --by-file --exclude-dir=test,tmp --include_ext=rb,c,java .'
# abbr -a build_dots 'docker build -t dotfiles:latest ~/development/dotfiles --no-cache'
# abbr -a run_dots 'docker run -it --entrypoint /usr/bin/fish dotfiles:latest'
#abbr -a web w3m https://duckduckgo.com

# -- Calendar
# abbr -a agenda icalBuddy -f -sd -ss "" -df "%A, %B %e, %Y" -n -nc -iep "title,datetime,location" -ps "|: |\n  |" -po "datetime,title,location" eventsToday+7
# abbr -a next_event icalBuddy -ic "noah@headway.io" -n -nc -iep "title,datetime" -b '' -ps "|: |" -po "datetime,title" eventsToday+2 | head -1

# Retrieve today's bibleinayearonline.com reading:
abbr -a bible ~/development/dotfiles/scripts/swiftbar_plugins/bible_in_a_year.1h.sh

# TODO: Retrieve Joshua Project's people group of the day (https://unreachedoftheday.org/)

# TODO: Count commands in fish history to see how many times each abbreviation is used.
# history | LC_ALL=C sort | uniq -c | LC_ALL=C sort -nr | head -n 40

# Devbox
abbr -a db devbox
abbr -a dbg "devbox global"
abbr -a outdated "brew outdated && devbox global list --outdated"

abbr -a n "nnn -ce"
