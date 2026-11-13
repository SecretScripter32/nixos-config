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

    jetbrains-mono

    googlesans-code

    material-symbols
  ];
}
