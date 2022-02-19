{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "monospace";
      size = 20;
    };
  };
}
