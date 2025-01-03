{ config, pkgs, ... }: {
  # General Home Manager setup.
  home.username = "noah";
  home.homeDirectory = "/Users/noah";

  # Packages to install
  home.packages = [
    fortune,
    # amfora,
    # bat,
    # cloc,
    # curl,
    # ddgr,
    # direnv,
    # dua-cli,
    # efm-langserver,
    # exercism,
    # exiftool,
    # fd,
    # felixkratz/formulae/sketchybar,
    # flyctl
    # gcalcli
    # gh
    # git
    # git-delta
    # glow
    # go
    # hugo
    # jq,
    # koekeishiya/formulae/skhd,
    # koekeishiya/formulae/yabai,
    # ledger
    # lsd,
    # mplayer,
    # musikcube,
    # mutt
    # navi
    # pkgs.neovim,
    # newsboat
    # pgcli
    # pipx
    # reattach-to-user-namespace
    # ripgrep
    # shpotify?
    # spotify-tui
    # spotifyd
    # starship
    # svgo
    # tealdeer
    # the_silver_searcher
    # tig
    # timewarrior
    # tmuxp
    # tree
    # w3m
    # weechat
    # wget
    # yarn
    # zlib
    # zsh
    # zsh-autosuggestions
    # zsh-syntax-highlighting

    
    # Various projects:
    # postgresql@14
    # postgresql@15
    # redis

  
    # Rails projects:
    # heroku/brew/heroku
    # hiredis
    # imagemagick


    # Rust:
    # rust-analyzer
  ];

  # Configuration version
  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}
