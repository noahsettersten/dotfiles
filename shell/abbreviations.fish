# -- Core --
abbr -a .. cd ..
abbr -a l lsd -lah --date relative
abbr -a dd "cd $HOME/development/dotfiles"
abbr -a hdu "du -d 1 -h | sort -h"
abbr -a web w3m https://duckduckgo.com

# -- Git (Brought over from oh-my-zsh's git aliases) --
abbr -a ga git add
abbr -a gb git branch
abbr -a gc git commit -v
abbr -a gcm git checkout main
abbr -a gcs git checkout staging
abbr -a gco git checkout
abbr -a gd git diff
abbr -a gst git status

# -- Git (From other sources?) --
abbr -a gp git push
abbr -a gs git stash
# abbr -a gsl git stash list
abbr -a gss git stash show -p
abbr -a uncommit 'git reset --soft HEAD~1'

# abbr -a diffm git diff --name-only main # Show files that have been changed in this branch
# abbr -a flags 'rg "console.log|TODO|FIXME|DEBUG" --max-columns=60 --max-columns-preview --no-heading --sort=path'
# abbr -a glsearch 'git log --all --full-history --' # Search through git log to find changes to a file (incl. deleted). E.g. `glsearch **/user.rb`. Then view the contents of a given commit with `git show {SHA}` or `git show {SHA} -- {FILEPATH}`
# abbr -a git_most_modified "git log --format=format: --name-only --since=12.month| egrep -v '^\$' | sort | uniq -c | sort -nr | head -50" # See https://twitter.com/nicoespeon/status/1605586911900438528?s=12&t=lSpZkllOA8eK-0ZIzf5doA

# -- Development tools
abbr -a tl tmux ls
abbr -a ta tmux attach -t $argv
abbr -a n "nnn -ce"
abbr -a lg lazygit
abbr -a outdated "brew outdated"
abbr -a loc 'cloc --vcs git .'

# --- Workflow
abbr -a tasks asana tasks list
abbr -a ghd gh dash

# --- LLMs
abbr -a oc opencode
abbr -a rr roborev tui

# -- Ruby and Rails --
abbr -a b bundle exec $argv
abbr -a rc 'bin/rails console'
abbr -a ldb mycli -h 127.0.0.1 -u root
abbr -a rt 'PARALLEL=1 bin/rails test'

abbr -a reset_android 'emulator -avd pco-mobile-emulator -wipe-data'

# -- Personal --
# abbr -a bible $HOME/development/dotfiles/scripts/swiftbar_plugins/bible_in_a_year.1h.rb
# TODO: Retrieve Joshua Project's people group of the day (https://unreachedoftheday.org/)
# history | sort | uniq -c | sort -nr | head -n 40 # TODO: Count commands in fish history to see how many times each abbreviation is used.

abbr -a compress_pdf gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -dPDFSETTINGS=/printer -sOutputFile=compressed.pdf
# abbr -a ts_count '~/development/dotfiles/scripts/ts_count.sh'
# abbr -a test_changes "~/development/dotfiles/scripts/test_ruby_changes.rb"
# abbr -a ly ~/development/dotfiles/scripts/libyear.sh
# xattr -dr com.apple.quarantine /Applications/LibreWolf.app 

# https://piechowski.io/post/git-commands-before-reading-code/
abbr -a git_most_changed 'git log --format=format: --name-only --since="1 year ago" | sort | uniq -c | sort -nr | head -20'
abbr -a git_top_contributors 'git shortlog -sn --no-merges'
abbr -a git_most_bugs 'git log -i -E --grep="fix|bug|broken" --name-only --format=\'\' | sort | uniq -c | sort -nr | head -20'
abbr -a git_velocity "git log --format='%ad' --date=format:'%Y-%m' | sort | uniq -c"
abbr -a git_crises 'git log --oneline --since="1 year ago" | grep -iE \'revert|hotfix|emergency|rollback\''

source "$HOME/development/dotfiles/scripts/print_git_branches.fish"
abbr -a gab print_all_git_branches
