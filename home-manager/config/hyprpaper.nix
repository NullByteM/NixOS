{
  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;
        preload = [ "/mnt/Data/Virtual.Machines/wallpaper/sunset-10.jpg" ];
        wallpaper = [ "eDP-1,/mnt/Data/Virtual.Machines/wallpaper/sunset-10.jpg" ];
      };
    };
    hyprpolkitagent.enable = true;
  };
}
