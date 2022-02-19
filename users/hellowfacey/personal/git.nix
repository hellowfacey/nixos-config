{ config, pkgs, ...}:

{
  programs.git = {
    enable = true;
    userName = "hellowfacey";
    userEmail = "hellowfacey@gmail.com";
  };

  programs.gh = {
    enable = true;
  };
}
