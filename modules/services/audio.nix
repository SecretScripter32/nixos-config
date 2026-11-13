/*
    ___             ___
   /   | __  ______/ (_)___
  / /| |/ / / / __  / / __ \
 / ___ / /_/ / /_/ / / /_/ /
/_/  |_\__,_/\__,_/_/\____/

*/

{ pkgs, ... }:

# ===============================================
#                 PIPEWIRE AUDIO
# ===============================================

{
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };
}
