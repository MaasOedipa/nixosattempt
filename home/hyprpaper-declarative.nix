{ config, pkgs, ... }:

let
  # Wallpaper path in the repo
  wallpaper = ./config/wallpapers/wall.png;
in
{
  imports = [
  ./user
  ];

  # Enable hyprpaper service declaratively
  services.hyprpaper = {
    enable = true;

    settings = {
      # Preload wallpapers into memory
      preload = [ "${wallpaper}" ];

      # Set wallpaper per monitor
      wallpaper = [ "eDP-1,${wallpaper}" ];

      # Disable splash screen
      splash = false;

      # Optional: add more settings declaratively
      # fit_mode = "cover"; # can also be per wallpaper if desired
    };
  };

  # Optional: still copy wallpapers if you want them in ~/.config/wallpapers
  home.file = {
    ".config/wallpapers".source = ./config/wallpapers;
  };
}
