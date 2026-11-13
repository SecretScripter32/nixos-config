/*

    __  __                 __                __
   / / / /_  ______  _____/ /___ _____  ____/ /
  / /_/ / / / / __ \/ ___/ / __ `/ __ \/ __  /
 / __  / /_/ / /_/ / /  / / /_/ / / / / /_/ /
/_/ /_/\__, / .___/_/  /_/\__,_/_/ /_/\__,_/
      /____/_/

*/

{ pkgs, inputs, ... }:

# ===============================================
#                HYPRLAND FLAKE
# ===============================================

{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;

    package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;

    portalPackage =
      inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
}
