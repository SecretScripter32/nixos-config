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
  fonts.packages = builtins.attrValues {
    inherit (pkgs.nerd-fonts)
      blex-mono
      iosevka
      caskaydia-mono
      jetbrains-mono
      fira-code
      hack
      meslo-lg;

    inherit (pkgs)
      googlesans-code
      material-symbols
      geist-font;
  };
}
