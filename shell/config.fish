# Manual pco-box setup. Pulled from $HOME/pco-box/env.sh
fish_add_path $HOME/pco-box/bin
fish_add_path $HOME/Code/pco/bin
source $HOME/pco-box/env.auth.sh
export MYSQL_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_ADDR=127.0.0.1
export MYSQL_READER_PORT_3306_TCP_PORT=3307

# Setup global Nix packages with devbox (this slows shell startup considerably)
set -gx SHELL fish
devbox global shellenv --init-hook | source

# Tools
direnv hook fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
    /opt/homebrew/bin/starship init fish | source

    set -g fish_greeting
end

# Extend configuration
source $HOME/development/dotfiles/shell/abbreviations.fish
source $HOME/development/dotfiles/shell/private_abbreviations.fish

fish_add_path /opt/homebrew/bin

# Variables
export EDITOR=hx
export NNN_OPENER=$HOME/development/dotfiles/scripts/nnn_open.sh
export GIT_MERGE_AUTOEDIT=no
# export BROWSER=w3m

# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1
export DO_NOT_TRACK=1 # For Devbox
export SAM_CLI_TELEMETRY=0

# Setup Android Studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
