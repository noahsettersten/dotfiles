# -- Core --
abbr -a .. cd ..
abbr -a l lsd -lah --date relative
# abbr -a d cd $HOME/development/
abbr -a dd "cd $HOME/development/dotfiles"
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
# abbr -a grbc git rebase --continue

# -- Git (From other sources?) --
abbr -a gp git push
abbr -a gs git stash
# abbr -a gsl git stash list
# abbr -a gss git stash show -p
abbr -a uncommit 'git reset --soft HEAD~1'
abbr -a diffm git diff --name-only main # Show files that have been changed in this branch
#abbr -a glsearch 'git log --all --full-history --' # Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`. Then view the contents of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
# abbr -a flags '~/development/dotfiles/scripts/grep_comment_flags.sh'
# abbr -a git_most_modified "git log --format=format: --name-only --since=12.month| egrep -v '^\$' | sort | uniq -c | sort -nr | head -50" # See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA

# -- Development tools
abbr -a tl tmux ls
abbr -a ta tmux attach -t $argv
abbr -a n "nnn -ce"
abbr -a lg lazygit

# -- Devbox --
abbr -a db devbox
abbr -a dbg "devbox global"
abbr -a outdated "brew outdated && devbox global list --outdated"
abbr -a pc 'cd ~/pco-box && devbox run process-compose attach'

# -- Other utilities --
abbr -a hdu "du -d 1 -h | sort -h"
abbr -a loc 'cloc --vcs git .'
abbr -a floc 'cloc --by-file --exclude-dir=test,tmp,.devbox --include_ext=rb,c,java .'
#abbr -a web w3m https://duckduckgo.com

# -- Ruby and Rails --
abbr -a b bundle exec $argv
abbr -a rc 'bin/rails console'
# abbr -a rdbc 'bin/rails dbconsole'
# abbr -a btest 'PARALLEL_WORKERS=4 bundle exec rails test'
# abbr -a test_branch 'bundle exec rails test $(git diff --name-only main | grep "^test")'
# abbr -a rt "$HOME/development/dotfiles/scripts/rubotree_changed.sh"
abbr -a localdb mysql -h 127.0.0.1 -u root
# alias rbcop="bundle exec rubocop --format offenses"
# alias lint="bundle exec rubocop --format offenses && yarn lint && yarn format:check"
# alias test_rb="COVERAGE=true bundle exec rails test"
# alias test_js="yarn test --coverage"

# Retrieve today's bibleinayearonline.com reading:
abbr -a bible ~/development/dotfiles/scripts/swiftbar_plugins/bible_in_a_year.1h.sh
# TODO: Retrieve Joshua Project's people group of the day (https://unreachedoftheday.org/)
# history | LC_ALL=C sort | uniq -c | LC_ALL=C sort -nr | head -n 40 # TODO: Count commands in fish history to see how many times each abbreviation is used.

abbr -a compress_pdf gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/printer -sOutputFile=compressed.pdf input.pdf

# GH abbreviations
# gh api notifications
