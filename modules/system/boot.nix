/*
    ____              __
   / __ )____  ____  / /_
  / __  / __ \/ __ \/ __/
 / /_/ / /_/ / /_/ / /_
/_____/\____/\____/\__/

*/

{ pkgs, ... }:

# ===============================================
#               BOOT CONFIGURATION
# ===============================================

{
  # Use the GRUB boot loader

  boot.loader = {
    systemd-boot.enable = false;

    efi = {
      canTouchEfiVariables = true;
    };

    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      useOSProber = true;
    };
  };

  # ===============================================
  #              PLYMOUTH BOOT THEMES
  # ===============================================


  boot.plymouth = {
    enable = true;

    theme = "liquid";

    themePackages = [
      (pkgs.adi1090x-plymouth-themes.override {
        selected_themes = [ "liquid" ];
      })
    ];
  };

  # ===============================================
  #                      SWAP
  # ===============================================


  swapDevices = [
    {
      device = "/dev/disk/by-uuid/170d4777-df6c-4cc4-a429-532a70b0c58d";
    }
  ];

  # ===============================================
  #                KERNEL SETTINGS
  # ===============================================

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Kernel Parameters
  boot.kernelParams = [
    "quiet"
    "splash"
    "rd.udev.log_level=3"
    "rd.systemd.show_status=auto"
    "acpi_enforce_resources=lax"
  ];
}
