# Variables
set -g fish_greeting
set -gx EDITOR hx
set -gx NNN_OPENER $HOME/development/dotfiles/scripts/nnn_open.sh
set -gx GIT_MERGE_AUTOEDIT no
# set -gx BROWSER w3m
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Disable telemetry/analytics
set -gx HOMEBREW_NO_ANALYTICS 1
set -gx DO_NOT_TRACK 1 # For Devbox
set -gx SAM_CLI_TELEMETRY 0 # For AWS CLI?

# Extend configuration
source $HOME/development/dotfiles/shell/abbreviations.fish
source $HOME/development/dotfiles/shell/private_abbreviations.fish
source $HOME/development/dotfiles/shell/pco.fish

fish_add_path /opt/homebrew/bin
direnv hook fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/starship init fish | source
end
