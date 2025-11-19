{
  imports = [
    ./hardware-configuration.nix
    ./modules/fileSystem.nix
    ./modules/boot.nix
    ./modules/networking.nix
    ./modules/services.nix
    ./modules/hyprland.nix
    ./modules/drivers.nix
    ./modules/sound.nix
    ./modules/account.nix
    ./modules/packages.nix
    ./modules/fonts.nix
    ./modules/virtualisation.nix
    ./modules/zram.nix
    ./modules/qt.nix
    ./modules/system.nix
  ];

  # Documentation
  documentation.nixos.enable = false;

  # Enable Flakes and Hyprland
  nix.settings = {
    experimental-features = [ "nix-command" "flakes" ];
    substituters = [ "https://hyprland.cachix.org" ];
    trusted-substituters = [ "https://hyprland.cachix.org" ];
    trusted-public-keys = [ "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc=" ];
  };

  # Enable Unfree Software
  nixpkgs.config.allowUnfree = true;

  # Set your time zone.
  time.timeZone = "Africa/Cairo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ar_EG.utf8";
  };

  environment.sessionVariables = rec {
    NIXOS_OZONE_WL = 1;
  };

  system.stateVersion = "25.05";
}
