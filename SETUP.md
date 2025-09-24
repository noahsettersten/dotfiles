# Setting up a new machine

## Mac OS X

1. Generate an SSH key and add it to GitHub account: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
1. Clone dotfiles (this repository) into `$HOME/development/dotfiles`

1. Install Devbox: https://www.jetify.com/docs/devbox/installing_devbox/?install-method=macos
1. Install Homebrew: https://brew.sh
1. Install Karabiner Elements: https://karabiner-elements.pqrs.org/
1. `brew bundle install` from `$HOME/development/dotfiles/config/`
1. Install wee-slack, and connect to teams: https://github.com/wee-slack/wee-slack#setup

1. Configure macOS: `$HOME/development/dotfiles/scripts/setup_new_mac.sh`
1. Install dotfiles with `$HOME/development/dotfiles/install`
1. Manually configure the OS:

        - Trackpad: silent clicking
        - Accessibility: Pointer control -> Trackpad options -> Enable dragging with three finger drag

1. Configure Catpuccin colors for Alacritty: https://gist.github.com/sainnhe/e5c4512d5bcfcb46afd493beb86223c6

## Configured Tools
- Starship - Show last git commit message: https://github.com/starship/starship/discussions/3625
