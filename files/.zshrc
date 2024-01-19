typeset -F SECONDS

eval "$(starship init zsh)"

# Load private variables
source $HOME/development/machine/config/.credentials

# Terminal config
export DISABLE_AUTO_TITLE='true'    # Allows setTerminalText to work
# export BROWSER=w3m
# export BROWSER='/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox'

export EDITOR=nvim
export GIT_MERGE_AUTOEDIT=no
# export NX_NO_CLOUD=true

# Setup PATH
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

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
source ~/.dotfiles/zsh/git-aliases.zsh
source ~/.dotfiles/zsh/shortcuts.zsh
source $HOME/development/machine/config/shortcuts_personal.zsh

# Language tools
source $HOME/.cargo/env
eval "$(mise activate zsh)"

# Disable telemetry/analytics
export HOMEBREW_NO_ANALYTICS=1
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Additional tools
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Install from homebrew
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh         # Install from homebrew: https://github.com/zsh-users/zsh-autosuggestions
eval "$(direnv hook zsh)"

# FZF
export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

command printf "Shell Startup Time: %.1fms\n" $(($SECONDS*1000))
