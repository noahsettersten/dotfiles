typeset -F SECONDS

eval "$(starship init zsh)"

# Private variables
source $HOME/development/machine/config/.credentials

# Terminal config
export DISABLE_AUTO_TITLE='true'    # Allows setTerminalText to work
export EDITOR=nvim
export GIT_MERGE_AUTOEDIT=no
export VIMRC=$HOME/.vimrc

# Setup PATH (as needed)
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/usr/local/opt/mongodb-community@3.4/bin
export PATH=$PATH:$HOME/Library/Python/3.9/bin
export PATH=$PATH:$HOME/.asdf/installs/nodejs/15.3.0/.npm/bin
# export PATH=$PATH:~/.emacs.d/bin

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

# Additional tools
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/asdf/asdf.sh

export FZF_DEFAULT_COMMAND='find . -name .git -prune -o -name node_modules -prune -o -name deps -prune -o -name _build -prune -o -name .elixir_ls -prune -o -name coverage -prune -o -name tmp -prune -o -type f -print'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

command printf "Shell Startup Time: %.1fms\n" $(($SECONDS*1000))
