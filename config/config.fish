if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source

    export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
    fzf --fish | source

    set -g fish_greeting
end

# Extend configuration
#source $HOME/development/machine/config/.credentials
source $HOME/development/dotfiles/fish/abbreviations.fish
source $HOME/development/machine/config/abbreviations_personal.fish

# Variables
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"
export EDITOR=nvim

# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export STORYBOOK_DISABLE_TELEMETRY=1

# Tools
mise activate fish | source
direnv hook fish | source
