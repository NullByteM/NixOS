{
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    settings = {
      "$mod" = "SUPER";
      monitor = ",preferred,auto,auto";
      exec-once = [
        "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
        "dunst"
        "nm-applet"
        "waybar"
        "blueman-applet"
        "numlockx on"
        "redshift -O 4500K"
        "clipse -listen"
        "swayosd-server"
        "solaar -w hide"
        # "swayidle -w timeout 600 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'"
      ];
      env = [
        "XCURSOR_SIZE,16"
        "LIBVA_DRIVER_NAME,nvidia"
        "XDG_SESSION_TYPE,wayland"
        "GBM_BACKEND,nvidia-drm"
        "__GLX_VENDOR_LIBRARY_NAME,nvidia"
        "NVD_BACKEND,direct"
        "ELECTRON_OZONE_PLATFORM_HINT,auto"
      ];
      cursor = {
        no_hardware_cursors = true
      };
      input = {
        kb_layout = "us,ara";
        kb_variant = ",qwerty";
        kb_model = "pc104";
        kb_options = "grp:win_space_toggle";
        follow_mouse = 1;
        accel_profile = "flat";
        touchpad = {
          natural_scroll = "no";
        };
        sensitivity = 0;
      };
      general = {
        gaps_in = 2;
        gaps_out = 2;
        border_size = 2;
        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 45deg";
        "col.inactive_border" = "rgba(595959aa)";
        resize_on_border = false;
        allow_tearing = false;
        layout = "dwindle";
      };
      decoration = {
        rounding = 10;
        active_opacity = 1.0;
        inactive_opacity = 0.9;
        fullscreen_opacity = 1.0;
        blur = {
          enabled = true;
          size = 6;
          passes = 4;
          new_optimizations = "on";
          ignore_opacity = true;
          xray = true;
        };
        shadow = {
          enabled = true;
          range = 30;
          render_power = 3;
          color = "0x66000000";
        };
      };
      dwindle = {
        preserve_split = true;
      };
      master = {
        new_status = "master";
      };
      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
        disable_splash_rendering = true;
        vrr = 1;
      };
      animations = {
        enabled = true;
        bezier = [
          "wind, 0.05, 0.9, 0.1, 1.05"
          "winIn, 0.1, 1.1, 0.1, 1.1"
          "winOut, 0.3, -0.3, 0, 1"
          "liner, 1, 1, 1, 1"
        ];
        animation = [
          "windows, 1, 6, wind, slide"
          "windowsIn, 1, 6, winIn, slide"
          "windowsOut, 1, 5, winOut, slide"
          "windowsMove, 1, 5, wind, slide"
          "border, 1, 1, liner"
          "borderangle, 1, 30, liner, loop"
          "fade, 1, 10, default"
          "workspaces, 1, 5, wind"
        ];
      };
      bind = [
        "$mod, F, exec, brave"
        "$mod, Return, exec, kitty"
        "$mod, Q, killactive"
        "$mod, M, exit"
        "SUPER_SHIFT, Return, exec, nautilus"
        "$mod, V, togglefloating"
        "$mod, D, exec, rofi -show drun"
        "$mod, X, exec, wlogout"
        "$mod, P, pseudo"
        "$mod, J, togglesplit"
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"
        "$mod, S, togglespecialworkspace, magic"
        "$mod SHIFT, S, movetoworkspace, special:magic"
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"
        ", XF86AudioRaiseVolume, exec, pamixer --increase 5"
        ", XF86AudioLowerVolume, exec, pamixer --decrease 5"
        ", XF86AudioMute, exec, pamixer --toggle-mute"
        "$mod CTRL, up, exec, brightnessctl set 5%+"
        "$mod CTRL, down, exec, brightnessctl set 5%-"
        "$mod CTRL, T, exec, dunstify \"Your Battery Mode IS $(powerprofilesctl get)\""
        "$mod CTRL, S, exec, sh -c 'powerprofilesctl set power-saver && dunstify \"Your Battery Mode IS $(powerprofilesctl get)\"'"
        "$mod CTRL, B, exec, sh -c 'powerprofilesctl set balanced && dunstify \"Your Battery Mode IS $(powerprofilesctl get)\"'"
        "$mod CTRL, P, exec, sh -c 'powerprofilesctl set performance && dunstify \"Your Battery Mode IS $(powerprofilesctl get)\"'"
        ", Print, exec, grim -g \"$(slurp)\" ~/Pictures/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"
        "$mod SHIFT, V, exec, kitty --class clipse -e clipse"
      ];
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };
  };
}
