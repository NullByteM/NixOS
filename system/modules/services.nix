{ lib, pkgs, ... }:

{
  services = {
    dbus.enable = true;
    dbus.apparmor = "enabled";
    udisks2.enable = true;
    udisks2.mountOnMedia = true;
    gvfs.enable = true;
    gnome.gnome-keyring.enable = true;
    power-profiles-daemon.enable = true;
    blueman.enable = true;
    libinput.enable = true;
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
        autoNumlock = true;
        package = pkgs.kdePackages.sddm;
        theme = "simple-sddm-2";
      };
    };
  };
}
