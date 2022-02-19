{ config, pkgs, ... }:

let
  mod = "Mod4";
in {
  home.packages = [
    pkgs.rofi
  ];
 
  xsession = {
    enable = true;
    windowManager = {
      i3 = {
        enable = true;
        package = pkgs.i3-gaps;
        config = {
          modifier = mod;
          menu = "rofi -show run";
          
          gaps = {
            inner = 10;
          };
          
          bars = [ ];
        };
      };
    };
    scriptPath = ".hm-xsession";
  };
}
