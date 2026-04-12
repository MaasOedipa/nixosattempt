{
  description = "My simple NixOS flake";

  inputs = {
    # The official NixOS package soruce
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager = {
      #Homemanager url
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    textfox.url = "github:adriankarlen/textfox";
    catppuccin-textfox = {
      url = "github:catppuccin/firefox";
      flake = false;
    };

    nvim-config = {
      url = "github:MaasOedipa/kickstart.nvim";
      flake = false;
    };

    nixcord.url = "github:FlameFlag/nixcord";

    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { self
    , nixpkgs
    , home-manager
    , ...
    } @ inputs:
    let
      lib = nixpkgs.lib;
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      formatter.${system} = pkgs.alejandra;

      #Entrypoint for nix config
      nixosConfigurations.nixos = lib.nixosSystem {
        system = system;

        specialArgs = {
          inherit inputs;
        };
        modules = [
          ./system/configuration.nix

          inputs.nix-index-database.nixosModules.nix-index

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit inputs;
            };
            home-manager.users.pnix = import ./home/home.nix;
          }
        ];
      };
    };
}
