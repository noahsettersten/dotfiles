{
  description = "My Home Manager flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs: {
    defaultPackage.x86_64-linux = home-manager.defaultPackage.x86_64-linux;
    defaultPackage.aarch64-darwin = home-manager.defaultPackage.aarch64-darwin;
 
    homeConfigurations = {
      "noah" = inputs.home-manager.lib.homeManagerConfiguration {
        system = "aarch64-darwin"; # TODO: replace with x86_64-linux on Linux
        homeDirectory = "/Users/noah"; # TODO: make this match your home directory
        username = "noah"; # TODO: Change to your username
        configuration.imports = [ ./home.nix ];
      };
    };
  };
}
