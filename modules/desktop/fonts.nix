/*
    ______            __
   / ____/___  ____  / /______
  / /_  / __ \/ __ \/ __/ ___/
 / __/ / /_/ / / / / /_(__  )
/_/    \____/_/ /_/\__/____/

*/

{ pkgs, ... }:

# ===============================================
#                INSTALLED FONTS
# ===============================================

{
  fonts.packages = with pkgs; [
    nerd-fonts.blex-mono
    nerd-fonts.iosevka
    nerd-fonts.caskaydia-mono
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code
    nerd-fonts.hack
    nerd-fonts.meslo-lg

    googlesans-code

    material-symbols
  ];
}
