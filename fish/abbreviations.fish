# -- Core --
abbr -a .. cd ..
abbr -a l lsd -lah --date relative
abbr -a d cd $HOME/development/

# -- Git (Brought over from oh-my-zsh's git aliases) --
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
abbr -a gcm git checkout main
abbr -a gcd git checkout develop
abbr -a gco git checkout
abbr -a gd git diff
# abbr --add gr='git remote'
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
abbr -a diffd git diff --name-only develop

# -- Extended Git --
# Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`
# Then view the contents of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
#abbr -a glsearch 'git log --all --full-history --'
abbr -a gflags '~/development/dotfiles/scripts/grep_comment_flags.sh'
abbr -a gflagsd '~/development/dotfiles/scripts/grep_comment_flags_diff.sh'

abbr -a gafzf 'git add $(git status --short | cut -c 4- | fzf)'

# See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA
abbr -a git_most_modified "git log --format=format: --name-only --since=12.month| egrep -v '^\$' | sort | uniq -c | sort -nr | head -50"
abbr -a lg lazygit

# Tmux
abbr -a tl tmux ls
abbr -a ta tmux attach -t $argv

# Editors
abbr -a v nvim
abbr -a nvp "curl https://nvim.sh/s/"
#abbr -a em emacs -nw

# -- Frameworks --
abbr -a b bundle exec $argv
#abbr -a yb yarn build
#abbr -a sb yarn run lerna run storybook -- --no-open

# -- Xcode --
abbr -a xclist xcrun simctl list

# -- Time Warrior --
abbr -a t timew
abbr -a tt ~/development/dotfiles/scripts/timewarrior_summary.sh
abbr -a ts timew summary :ids
abbr -a tw timew week
abbr -a ttags timew tagsum today
abbr -a tc timew client

# -- Utilities --
abbr -a hdu "du -d 1 -h | sort -h"
abbr -a today ~/development/dotfiles/scripts/today.sh
abbr -a mc musikcube

# -- Other --
abbr -a build_dots 'docker build -t dotfiles:latest ~/development/dotfiles --no-cache'
abbr -a run_dots 'docker run -it --entrypoint /usr/bin/fish dotfiles:latest'
#abbr -a web w3m https://duckduckgo.com

# -- Tmuxp shortcuts
abbr -a ww tmuxp load workspace
abbr -a trails tmuxp load rails

# -- Personal Tools
abbr -a churchcal ~/development/dotfiles/scripts/liturgical_calendar.sh
abbr -a lectionary ~/development/dotfiles/scripts/lectionary.sh
abbr -a cdl cd ~/development/files/to_listen
abbr -a dash ~/development/investment/dashboard/dashboard

# abbr -a tp_attach='$HOME/development/dotfiles/scripts/tmuxp_attach.sh'

# Retrieve today's bibleinayearonline.com reading:
abbr -a bible ~/development/dotfiles/scripts/bible_in_a_year.sh

# TODO: Retrieve Joshua Project's people group of the day (https://unreachedoftheday.org/)


# TODO: Count commands in fish history to see how many times each abbreviation is used.
# history | LC_ALL=C sort | uniq -c | LC_ALL=C sort -nr | head -n 40
