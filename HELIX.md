# My use of Helix
 
## Quickref
- Find and replace: %s <find> Enter c <replace>
- If comments look odd in Alacritty + Tmux, see https://github.com/helix-editor/helix/issues/3801
- :append-output (Alt-!), :pipe (|), :sh
- gw to jump to anywhere by two characters
- f + [char] to jump to the next character (F + [char] for previous)
- m + m/a/i to match, m + s/r/d to modify

## Features

- TODO: Seamlessly switch between editor and tmux panes (move between splits with same keys as Tmux mappings)
- See https://dev.to/rajasegar/helix-and-tmux-integration-3fd0

### Active work/discussion
- Undofile: https://github.com/helix-editor/helix/pull/9154
- Remember last place when re-opening a file: See above
- View git blame: https://github.com/helix-editor/helix/pull/13133
- Send picker results to quickfix: https://github.com/helix-editor/helix/discussions/5902
 
### Unknown features
- Virtual edit (vim.opt.virtualedit = "all"). I don't think this is possible at the moment.
- Open docs for package on given line: vim.keymap.set("n", "gx", require("functions.go_to_package").OpenPackageDocs, { desc = "Open package docs" })
