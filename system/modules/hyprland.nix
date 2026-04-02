{ config, pkgs, ... }:

{
	programs.hyprland = {
		enable = true;
	};

	environment.systemPackages = with pkgs; [
		networkmanagerapplet
		hyprpaper
		hyprlock
		nwg-bar
		waybar
		power-profiles-daemon
		wofi
		grim
		slurp
	];
}
