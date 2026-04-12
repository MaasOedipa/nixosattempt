{ ... }: {
  imports = [
    ./hyprland.nix
    ./firefox.nix
    ./networking.nix
    ./packages.nix
    ./nano.nix
    ./nix-index-database.nix
  ];
}
