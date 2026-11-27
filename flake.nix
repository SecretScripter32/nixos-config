/*
    ________      __
   / ____/ /___ _/ /_____  _____
  / /_  / / __ `/ //_/ _ \/ ___/
 / __/ / / /_/ / ,< /  __(__  )
/_/   /_/\__,_/_/|_|\___/____/

*/

{
  description = "My NixOS flakes with Hyprland and GazShell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    matugen.url = "github:InioX/matugen";
    hyprland.url = "github:hyprwm/Hyprland";
    qylock.url = "github:Darkkal44/qylock";
    
    helium = {
       url = "github:amaanq/helium-flake";
       inputs.nixpkgs.follows = "nixpkgs";
    };

    quickshell = {
      url = "git+https://git.outfoxxed.me/outfoxxed/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, ... } @ inputs: {
    nixosConfigurations."Gary-NixOS-PC" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = { inherit inputs; };

      modules = [
        ./configuration.nix

        {
          environment.systemPackages = [
            inputs.helium.packages.x86_64-linux.default
          ];
        }

        inputs.home-manager.nixosModules.home-manager
        inputs.matugen.nixosModules.default
        inputs.hyprland.nixosModules.default

        inputs.qylock.nixosModules.default

        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;

            backupFileExtension = "backup";

            users.gary = import ./home.nix;
          };

          programs.qylock = {
            enable = true;
            theme = "pixel-dusk-city";

            quickshell.enable = true;
            sddm.enable = true;
          };
        }
      ];
    };
  };
}
