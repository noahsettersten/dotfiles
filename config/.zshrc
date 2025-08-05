typeset -F SECONDS

export PATH="/opt/homebrew/bin:$PATH"
eval "$(devbox global shellenv --init-hook)"
eval "$(starship init zsh)"

# Load private variables
# source $HOME/development/machine/config/.credentials

# Terminal config
export DISABLE_AUTO_TITLE='true'    # Allows setTerminalText to work
# export BROWSER=w3m
# export BROWSER='/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox'

export EDITOR=hx
# export VISUAL=~/development/dotfiles/scripts/nnn_open.sh
export GIT_MERGE_AUTOEDIT=no

# Setup PATH
# export GOPATH="$HOME/go"
# export PATH="$PATH:$GOPATH/bin"

# Setup Android Studio
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools

# History search
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=50000
export SAVEHIST=10000
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Command completion
FPATH=/usr/local/share/zsh/site-functions:$FPATH
autoload -Uz compinit && compinit

# Theming and Aliases
source $HOME/development/dotfiles/shell/shortcuts.zsh
source $HOME/development/machine/private_shortcuts.zsh


# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1

# Additional tools
source $HOME/.local/share/devbox/global/default/.devbox/nix/profile/default/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
source $HOME/.local/share/devbox/global/default/.devbox/nix/profile/default/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(direnv hook zsh)"
eval "$(batman --export-env)"

# FZF
export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
# [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# PCO tools
source $HOME/pco-box/env.sh
eval "$($HOME/Code/pco/bin/pco init -)"  

command printf "Shell Startup Time: %.1fms\n" $(($SECONDS*1000))
