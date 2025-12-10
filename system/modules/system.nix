{ pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    config.common.default = "hyprland";
    extraPortals = with pkgs; [ xdg-desktop-portal-gtk ];
  };
  security.polkit.enable = true;
  security.apparmor.enable = true;
  security.pam.services.login.enableGnomeKeyring = true;
  security.pam.services.sddm.enableGnomeKeyring = true;
  systemd = {
    user.services.polkit-gnome-authentication-agent-1 = {
      description = "polkit-gnome-authentication-agent-1";
      wantedBy = [ "graphical-session.target" ];
      wants = [ "graphical-session.target" ];
      after = [ "graphical-session.target" ];
      serviceConfig = {
        Type = "simple";
        Environment = "XDG_CURRENT_DESKTOP=Hyprland";
        ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
        Restart = "on-failure";
        RestartSec = 1;
        TimeoutStopSec = 10;
      };
    };
  };
}
