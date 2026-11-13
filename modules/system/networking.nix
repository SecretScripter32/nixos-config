/*
    _   __     __                      __   _
   / | / /__  / /__      ______  _____/ /__(_)___  ____ _
  /  |/ / _ \/ __/ | /| / / __ \/ ___/ //_/ / __ \/ __ `/
 / /|  /  __/ /_ | |/ |/ / /_/ / /  / ,< / / / / / /_/ /
/_/ |_/\___/\__/ |__/|__/\____/_/  /_/|_/_/_/ /_/\__, /
                                                /____/
*/

{ pkgs, ... }:

# ===============================================
#                NETWORK SETTINGS
# ===============================================

{
  networking.hostName = "Gary-NixOS-PC"; # Networking Hostname
  networking.wireless.enable = true; # Enable wireless support via wpa_supplicant
  networking.networkmanager.enable = true; # Enable Network Manager
}
