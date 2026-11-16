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

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set fish_greeting
    '';

    shellAliases = {
      nix-rebuild-switch = "sudo nixos-rebuild switch --flake /etc/nixos#Gary-NixOS-PC";
      nix-update = "nix flake update";
    };

    shellInit = ''
      set -Ux EDITOR nvim
      set -Ux VISUAL nvim
      set -Ux SUDO_EDITOR nvim

      fastfetch
    '';
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;
  };
}
