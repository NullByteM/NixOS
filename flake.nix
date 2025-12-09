{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    hyprland.url = "github:hyprwm/Hyprland";
    lanzaboote.url = "github:nix-community/lanzaboote/v0.4.3";
    lanzaboote.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ nixpkgs, home-manager, lanzaboote,... }: {
    nixosConfigurations = {
      NullByteM-PC = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          ./system/configuration.nix
          lanzaboote.nixosModules.lanzaboote
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.NullByteM = import ./home-manager/home.nix;
          }
        ];
      };
    };
  };
}
