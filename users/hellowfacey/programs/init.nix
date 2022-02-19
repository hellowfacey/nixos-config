{ pkgs, config, ...}:

{
  imports = [
    ./kitty.nix
    ./firefox.nix
  ];
}
