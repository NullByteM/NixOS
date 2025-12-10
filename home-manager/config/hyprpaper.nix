{
  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        splash_offset = 2.0;
        preload = [ "/mnt/Data/Virtual.Machines/wallpaper/3d-tech.jpg" ];
        wallpaper = [ "eDP-1,/mnt/Data/Virtual.Machines/wallpaper/3d-tech.jpg" ];
      };
    };
    hyprpolkitagent.enable = true;
  };
}
