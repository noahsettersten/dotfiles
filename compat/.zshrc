typeset -F SECONDS

export PATH="/opt/homebrew/bin:$PATH"
eval "$(starship init zsh)"

# Terminal config
export DISABLE_AUTO_TITLE='true'    # Allows setTerminalText to work
# export BROWSER=w3m

export EDITOR=hx
# export VISUAL=~/development/dotfiles/scripts/nnn_open.sh
export GIT_MERGE_AUTOEDIT=no

# Setup Android Studio
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools

# History search
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=50000
export SAVEHIST=10000
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Command completion
FPATH=/usr/local/share/zsh/site-functions:$FPATH
autoload -Uz compinit && compinit

# Aliases
source $HOME/development/dotfiles/compat/shortcuts.zsh

# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1
export DO_NOT_TRACK=1 # For Devbox
export SAM_CLI_TELEMETRY=0

# Additional tools
# source $HOME/.local/share/devbox/global/default/.devbox/nix/profile/default/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
# source $HOME/.local/share/devbox/global/default/.devbox/nix/profile/default/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(direnv hook zsh)"

# FZF
# export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
# [ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh

# PCO tools
source $HOME/pco-box/env.sh
eval "$($HOME/Code/pco/bin/pco init -)"  

command printf "Shell Startup Time: %.1fms\n" $(($SECONDS*1000))
