/*
   _____      __  __  _
  / ___/___  / /_/ /_(_)___  ____ ______
  \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/
 ___/ /  __/ /_/ /_/ / / / / /_/ (__  )
/____/\___/\__/\__/_/_/ /_/\__, /____/
                          /____/
*/

{ ... }:


# ===============================================
#                SYSTEM SETTINGS
# ===============================================

{
 # Set time zone.
  time.timeZone = "Australia/Canberra";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_AU.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_AU.UTF-8";
    LC_IDENTIFICATION = "en_AU.UTF-8";
    LC_MEASUREMENT = "en_AU.UTF-8";
    LC_MONETARY = "en_AU.UTF-8";
    LC_NAME = "en_AU.UTF-8";
    LC_NUMERIC = "en_AU.UTF-8";
    LC_PAPER = "en_AU.UTF-8";
    LC_TELEPHONE = "en_AU.UTF-8";
    LC_TIME = "en_AU.UTF-8";
  };

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "au";
    variant = "";
  };

  # Enable Experimental features

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  hardware.enableRedistributableFirmware = true;
  hardware.i2c.enable = true;
}
