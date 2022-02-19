{ config, pkgs, ... }:

{
  imports = [
    ./personal/init.nix
    ./programs/init.nix
  ];

  home.username = "hellowfacey";
  home.homeDirectory = "/home/hellowfacey";
  home.stateVersion = "22.05";
  
  home.keyboard = {
    layout = "us,ua";
    options = [ "grp:win_space_toggle" ];
  };

  programs.home-manager.enable = true;
}
