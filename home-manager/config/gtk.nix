{ pkgs, ... }:

{
  gtk = {
    enable = true;
    cursorTheme.package = pkgs.bibata-cursors;
    cursorTheme.name = "Bibata-Modern-Classic";
    cursorTheme.size = 16;
    iconTheme.package = pkgs.papirus-icon-theme;
    iconTheme.name = "Papirus-Dark";
    font.name = "Sans";
    font.size = 10;
    gtk3.bookmarks = [
      "file:///mnt/Data Data"
      "file:///home/nullbytem/Documents Documents"
      "file:///home/nullbytem/Downloads Downloads"
      "file:///home/nullbytem/Music Music"
      "file:///home/nullbytem/Pictures Pictures"
      "file:///home/nullbytem/Videos Videos"
    ];
    gtk3.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
    gtk4.extraConfig = {
      gtk-application-prefer-dark-theme = 1;
    };
  };
}
