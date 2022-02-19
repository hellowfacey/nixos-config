{ config, pkgs, ... }:

{
  services.picom.enable = true;

  services.polybar = {
    enable = true;
    script = ''
      polybar main &
    '';
    config = {
      "bar/main" = {
        monitor = "\${env:MONITOR:Virtual-1}";
        background = "00000000";
        foreground = "#ffffff";

        modules-center = "date";
        modules-right = "xkeyboard";
        modules-left = "xworkspaces";
      };
      "module/date" = {
        type = "internal/date";
        interval = 30;
        
        date = "%H:%M";
        date-alt = "%a, %d %b %Y";
      };
      "module/xkeyboard" = {
        type = "internal/xkeyboard";
        interval = 5;
      };
      "module/xworkspaces" = {
        type = "internal/xworkspaces";
      };
    };
  };
}
