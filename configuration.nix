/*
    _   ___      ____  _____
   / | / (_)  __/ __ \/ ___/
  /  |/ / / |/_/ / / /\__ \
 / /|  / />  </ /_/ /___/ /
/_/ |_/_/_/|_|\____//____/

*/

{ ... }:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix

    ./modules/packages.nix

    ./modules/system/users.nix
    ./modules/system/boot.nix
    ./modules/system/networking.nix
    ./modules/system/settings.nix
    ./modules/system/environment.nix

    ./modules/desktop/login.nix
    ./modules/desktop/hyprland.nix
    ./modules/desktop/fonts.nix

    ./modules/services/audio.nix
    ./modules/services/bluetooth.nix
    ./modules/services/printing.nix
  ];

  system.stateVersion = "26.05"; 
}
