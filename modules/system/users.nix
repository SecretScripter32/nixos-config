/*
   __  __
  / / / /_______  __________
 / / / / ___/ _ \/ ___/ ___/
/ /_/ (__  )  __/ /  (__  )
\____/____/\___/_/  /____/

*/

{ pkgs, ...}:

# ===============================================
#                     USERS
# ===============================================

{
  users.users."gary" = {
    isNormalUser = true;
    description = "gary";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
      "i2c"
    ];
    packages = with pkgs; [ ];
  };
}
