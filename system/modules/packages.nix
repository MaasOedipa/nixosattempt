{ config, pkgs, ... }:

{

environment.systemPackages = with pkgs; [
  	nerd-fonts.noto
	nerd-fonts.monofur
	home-manager
  	wl-clipboard
	gh
  	git
 	kitty
 	neovim
        vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
        wget
	cargo
	gcc
  ];


}
