/*
    ______           _                                       __
   / ____/___ _   __(_)___  _________  ____ ___  ___  ____  / /_
  / __/ / __ \ | / / / __ \/ ___/ __ \/ __ `__ \/ _ \/ __ \/ __/
 / /___/ / / / |/ / / /_/ / /  / / / / / / / / /  __/ / / / /_
/_____/_/ /_/|___/_/\____/_/  /_/ /_/_/ /_/ /_/\___/_/ /_/\__/

*/

{ pkgs, ... }:

# ===============================================
#               ENVIRONMENT VARIABLES
# ===============================================

{
  # Set System Defaults

  environment.sessionVariables = {
    QT_ICON_THEME_NAME = "Reversal-dark";
    QT_ICON_THEME_SEARCH_PATHS = "/nix/store/9b61kpx0v7iynpppmigksi2rrmnh6big-reversal-icon-theme-0-unstable-2025-11-14/share/icons";
  };
}
