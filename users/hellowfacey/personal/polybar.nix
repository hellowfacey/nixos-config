{ config, pkgs, ... }:

{
  services.picom.enable = true;

  services.polybar = {
    enable = true;
    script = "polybar main &";
    package = pkgs.polybar.override {
      i3GapsSupport = true;
    };
    config = {
      "bar/main" = {
        monitor = "\${env:MONITOR:Virtual-1}";
        background = "00000000";
        foreground = "#ffffff";

        modules-center = "date";
        modules-right = "xkeyboard";
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
    };
  };
}
