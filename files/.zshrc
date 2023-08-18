typeset -F SECONDS

eval "$(starship init zsh)"

# Private variables
source $HOME/development/machine/config/.credentials

# Terminal config
export DISABLE_AUTO_TITLE='true'    # Allows setTerminalText to work
export BROWSER=w3m
export EDITOR=nvim
export GIT_MERGE_AUTOEDIT=no
export VIMRC=$HOME/.vimrc
export NX_NO_CLOUD=true

# Setup PATH (as needed)
export GOPATH="$HOME/go"
# export ANDROID_HOME=$HOME/Library/Android/sdk
# export PATH=$PATH:$HOME/.rd/bin:$ANDROID_HOME/platform-tools
# export PATH=$PATH:$HOME/.local/bin:$(python3 -m site --user-base)/bin
# export PATH="/opt/homebrew/opt/ruby@2.6/bin:$PATH"
# export PATH="$HOME/.luarocks/bin:$PATH"
# export PATH="$PATH:/opt/homebrew/lib/ruby/gems/3.2.0/gems/foreman-0.87.2/bin"
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
# source ~/.dotfiles/zsh/git-small.zsh
# source ~/.dotfiles/zsh/custom-prompt.zsh
source ~/.dotfiles/zsh/shortcuts.zsh
source $HOME/development/machine/config/shortcuts_personal.zsh

# Language tools
source $HOME/.cargo/env
# source /opt/homebrew//opt/asdf/libexec/asdf.sh
eval "$(~/.local/bin/rtx activate zsh)"

# Additional tools
export HOMEBREW_NO_ANALYTICS=1
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh # Install from homebrew
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh         # Install from homebrew: https://github.com/zsh-users/zsh-autosuggestions
eval "$(direnv hook zsh)"

export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

command printf "Shell Startup Time: %.1fms\n" $(($SECONDS*1000))
# export PATH=$PATH:$HOME/.maestro/bin

# pnpm
export PNPM_HOME="/Users/noah/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
