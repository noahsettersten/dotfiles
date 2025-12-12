# Setting up a new machine

## Mac OS X

1. Generate an SSH key and add it to GitHub account: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

1. Install [Homebrew](https://brew.sh)
1. Install [Karabiner Elements](https://karabiner-elements.pqrs.org/)
1. Install [wee-slack](https://github.com/wee-slack/wee-slack#setup) and connect to teams.

1. Clone dotfiles (this repository) into `$HOME/development/dotfiles`.
1. Configure macOS: `$HOME/development/dotfiles/scripts/setup_new_mac.sh`.
1. Install dotfiles with `$HOME/development/dotfiles/install`.
1. Manually configure the OS:

        - Trackpad: silent clicking
        - Accessibility: Pointer control -> Trackpad options -> Enable dragging with three finger drag

## Configured Tools
- Starship - Show last git commit message: https://github.com/starship/starship/discussions/3625
