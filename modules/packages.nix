/*
    ____             __
   / __ \____ ______/ /______ _____ ____  _____
  / /_/ / __ `/ ___/ //_/ __ `/ __ `/ _ \/ ___/
 / ____/ /_/ / /__/ ,< / /_/ / /_/ /  __(__  )
/_/    \__,_/\___/_/|_|\__,_/\__, /\___/____/
                            /____/
*/

{ pkgs, ... }:

# ===============================================
#                PACKAGE CONFIG
# ===============================================

{
  # Allow unfree packages

  nixpkgs.config.allowUnfree = true;

  # ===============================================
  #                   PROGRAMS
  # ===============================================

  # Enable External Drive Detection

  services.udisks2.enable = true;
  services.devmon.enable = true;

  # General Appstore Installation

  services.flatpak.enable = true;
  services.gnome.gnome-software.enable = true; 

  # Install Fish Shell

  programs.fish.enable = true;

  # Install OpenRGB

  services.hardware.openrgb = {
    enable = true;
    motherboard = "amd";
    package = pkgs.openrgb-with-all-plugins;
  };

  # Enable Starship prompt

  programs.starship.enable = true;

  # Install Thunar file manager

  programs.thunar.enable = true;
  programs.xfconf.enable = true;

  services.gvfs.enable = true;
  services.tumbler.enable = true;

  # App programs

  programs.steam.enable = true;

  # Hardware
  
  hardware.i2c.enable = true;

  # ===============================================
  #                    OVERLAYS
  # ===============================================

  nixpkgs.overlays = [

    # Install Matuwall

    (builtins.getFlake "github:naurissteins/Matuwall/f6ea58d8ae7f07f7b4681f9f2ce9b633988a8568")
    .overlays.default

  ];

  # ===============================================
  #                 SYSTEM PACKAGES
  # ===============================================

  environment.systemPackages = with pkgs; [

    # Tools

    git
    wget
    curl
    fzf
    gcc
    gnumake
    ripgrep
    fd
    wl-clipboard
    tree-sitter
    jq
    nixfmt

    # Apps

    kdePackages.dolphin
    vscode
    kitty
    firefox
    discord
    vlc
    obs-studio
    udiskie
    nwg-look
    gnome-disk-utility
    polkit_gnome

    # Gaming

    heroic
    bottles
    lutris

    # Jetbrains development

    jetbrains.clion

    # GTK Apps

    pkgs.glib
    pkgs.gsettings-desktop-schemas
    pkgs.dconf
    pkgs.procps
    pkgs.adw-gtk3

    # Hyprland Apps

    rofi
    fuzzel
    awww
    matugen
    matuwall
    libnotify

    # Terminal TUIs

    tty-clock
    cava
    cmatrix
    fastfetch
    fetch
    figlet
    lavat
    btop

    # Terminal Editor

    neovim

    # Hardware
    
    i2c-tools

    # Qt development

    kdePackages.qtbase
    kdePackages.qtdeclarative
    kdePackages.qttools

    qt6Packages.qt6ct
    libsForQt5.qt5ct

    quickshell

    # GStreamer packages

    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-ugly

    # Themes

    reversal-icon-theme
    qogir-icon-theme
  ];
}

