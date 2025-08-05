export MYSQL_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_PORT=3307

#. Setup global Nix packages with devbox
export DEVBOX_USE_VERSION=0.13.7
export __DEVBOX_VERSION_CHECK="1"
set -gx SHELL fish
devbox global shellenv --init-hook | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/starship init fish | source

    export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
    # TODO: fzf --fish | source
    # # [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

    set -g fish_greeting
end

# Extend configuration
source $HOME/development/dotfiles/fish/abbreviations.fish
source $HOME/development/machine/private_abbreviations.fish

fish_add_path /opt/homebrew/bin

# Variables
export EDITOR=hx
export NNN_OPENER=$HOME/development/dotfiles/scripts/nnn_open.sh
export GIT_MERGE_AUTOEDIT=no

# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1
export DO_NOT_TRACK=1 # For Devbox
export STORYBOOK_DISABLE_TELEMETRY=1
export SAM_CLI_TELEMETRY=0

# Tools
direnv hook fish | source

# Setup Android Studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools

# Configure bat as viewer for manpages
# TODO: batman --export-env | source
