{
  imports = [
    ./config/starship.nix
    ./config/kitty.nix
    ./config/gtk.nix
    ./config/dunst.nix
    ./config/rofi.nix
    ./config/mpv.nix
    ./config/dconf.nix
    ./config/fonts.nix
    ./config/packages.nix
    ./config/hyprland.nix
    ./config/fastfetch.nix
    ./config/waybar.nix
    ./config/hyprpaper.nix
  ];

  home.enableNixpkgsReleaseCheck = false;
  home.stateVersion = "25.11";
}
