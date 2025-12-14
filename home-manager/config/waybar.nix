{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        margin-top = 0;
        margin-bottom = 0;
        margin-left = 0;
        margin-right = 0;
        spacing = 0;
        modules-left = [ "hyprland/workspaces" "wlr/taskbar" ];
        modules-right = [ "backlight" "battery" "pulseaudio" "hyprland/language" "clock" "tray" ];
        "hyprland/workspaces" = {
          on-click = "activate";
          active-only = false;
          all-outputs = true;
          format = "{}";
          format-icons = {
            urgent = "";
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 4;
          };
        };
        "wlr/taskbar" = {
          format = "{icon}";
          icon-size = 16;
          tooltip-format = "{title}";
          on-click = "activate";
          on-click-middle = "close";
        };
        "pulseaudio" = {
          scroll-step = 5;
          format = "{volume}% {icon} {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = "{volume}% 󰝟 {icon} {format_source}";
          format-muted = "{volume}% 󰝟 {format_source}";
          format-source = "{volume}% ";
          format-source-muted = "{volume}% ";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = ["" "" ""];
          };
          on-click = "pavucontrol";
        };
        "battery" = {
          bat = "BAT0";
          interval = 1;
          format-discharging = "{capacity}% {icon}";
          format-charging = "{capacity}% 󰂄";
          format-plugged = "{capacity}% ";
          format-icons = ["" "" "" "" ""];
        };
        "backlight" = {
          device = "intel_backlight";
          format = "{percent}% ";
          on-scroll-up = "brightnessctl set 5%+";
          on-scroll-down = "brightnessctl set 5%-";
        };
        "clock" = {
          tooltip-format = "<tt>{calendar}</tt>";
          format-alt = " {:%a, %d %b %Y}";
          format = " {:%I:%M %p}";
        };
        "hyprland/language" = {
          format = " {}";
          format-en = "English (US)";
          format-ar = "Arabic (EG)";
          keyboard-name = "at-translated-set-2-keyboard";
        };
        "tray" = {
          spacing = 3;
        };
      };
    };
    style = ''
      @define-color backgroundlight #000000;
      @define-color backgrounddark #000000;
      @define-color workspacesbackground1 #000000;
      @define-color workspacesbackground2 #222222;
      @define-color bordercolor #000000;
      @define-color textcolor1 #FFFFFF;
      @define-color textcolor2 #FFFFFF;
      @define-color textcolor3 #000000;
      @define-color iconcolor #000000;
      * {
        font-family: "JetBrains Mono", "Font Awesome 7 Free Solid";
        font-weight: bold;
        min-height: 0;
      }
      window#waybar {
        background-color: rgba(255, 255, 255, 0.1);
        border-bottom: 0px solid #ffffff;
        transition-property: background-color;
        transition-duration: 0.5s;
      }
      #workspaces {
       background: @workspacesbackground1;
       margin: 2px 3px;
       padding: 0px 2px;
       border-radius: 8px;
       border: 0px;
       font-size: 14px;
       color: @textcolor1;
      }
      #workspaces button {
        padding: 0px 4px;
        margin: 2px;
        border-radius: 8px;
        border: 0px;
        color: @textcolor1;
        background-color: @workspacesbackground2;
        transition: all 0.2s ease-in-out;
        opacity: 0.4;
      }
      #workspaces button.active {
        background: @workspacesbackground2;
        border-radius: 8px;
        min-width: 28px;
        opacity: 1;
      }
      #workspaces button:hover {
        opacity: 0.7;
      }
      tooltip {
        border-radius: 6px;
        background-color: @backgroundlight;
        opacity: 0.85;
        padding: 8px;
      }
      tooltip label {
        color: @textcolor2;
      }
      #window,
      #taskbar,
      #clock,
      #pulseaudio,
      #battery,
      #backlight,
      #tray,
      #language {
        background: @backgroundlight;
        margin: 3px 2px;
        padding: 2px 6px;
        border-radius: 8px;
        font-size: 14px;
        color: @textcolor2;
        opacity: 0.85;
      }
      #taskbar button {
        padding: 0px 4px;
        border-radius: 8px;
      }
      #pulseaudio.muted {
        background-color: @backgrounddark;
        color: @textcolor1;
      }
      #battery.critical:not(.charging) {
        background-color: #f53c3c;
        color: @textcolor3;
        animation: blink 0.5s linear infinite alternate;
      }
      @keyframes blink {
        to {
          background-color: @backgroundlight;
          color: @textcolor2;
        }
      }
    '';
  };
}
