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
    hyprland.url = "github:hyprwm/Hyprland";
    qylock.url = "github:Darkkal44/qylock";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, hyprland, qylock, ... } @ inputs: {
    nixosConfigurations."Gary-NixOS-PC" = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = { inherit inputs; };

      modules = [
        ./configuration.nix

        inputs.home-manager.nixosModules.home-manager
        inputs.hyprland.nixosModules.default

        inputs.qylock.nixosModules.default

        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;

            users.gary = import ./home.nix;
          };
        }

        ({ pkgs, ... }: {
          programs.qylock = {
            enable = true;
            theme = "pixel-dusk-city";

            quickshell.enable = true;
            sddm.enable = true;
          };
        })
      ];
    };
  };
}
