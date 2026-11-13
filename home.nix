/*
    __  __                        __  ___
   / / / /___  ____ ___  ___     /  |/  /___ _____  ____ _____ ____  _____
  / /_/ / __ \/ __ `__ \/ _ \   / /|_/ / __ `/ __ \/ __ `/ __ `/ _ \/ ___/
 / __  / /_/ / / / / / /  __/  / /  / / /_/ / / / / /_/ / /_/ /  __/ /
/_/ /_/\____/_/ /_/ /_/\___/  /_/  /_/\__,_/_/ /_/\__,_/\__, /\___/_/
                                                       /____/
*/

{ pkgs, ... }:

{
  home.username = "gary";
  home.homeDirectory = "/home/gary";
  home.stateVersion = "26.11";

  home.packages = with pkgs; [
    fastfetch
    btop
    git

    grim
  ];

  services.flameshot = {
    enable = true;

    settings = {
      General = {
        useGrimAdapter = true;
        disabledGrimWarning = true;
        showStartupLaunchMessage = false;
        showDesktopNotification = true;
      };
    };
  };

  programs.fish.enable = true;
}
