{ config, pkgs, ...}:

{
  imports = [
    ./git.nix
    ./i3.nix
    ./polybar.nix
    ./environment.nix
  ];
}
