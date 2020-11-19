My personal configuration files, with a focus on:
- Zsh: Custom aliases, Starship prompt, FZF history search, and syntax highlighting.
- Tmux: Plus tmuxp for managing template sessions.
- Vim: Numerous customizations and utilities, with pluging managed by vim-plug.
- Brewfile for installing system dependencies and tools.
- asdf for managing language and tool versions.


To get RVM to play nicely with the chruby setup, I modified line 4 in ~/.rvm/scripts/extras/chruby.sh to this:
```
RUBIES=($( emulate sh -c 'ls -1d "$rvm_path/rubies"/*' 2>/dev/null ))
```
