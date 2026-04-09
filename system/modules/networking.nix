{ config, pkgs, ... }:

{
	networking.hostName = "nixos"; 

	networking.networkmanager.enable = true;

## network list
	networking.networkmanager.ensureProfiles.profiles = {
		homewifi = {
			connection = {
				id = "homewifi";
				type = "wifi";
				autoconnect = true;
				permissions = "";
			};
			wifi = {
				ssid = "Airties_Air4960R_7VCH";
				mode = "infrastructure";
			};
			wifi-security = {
				key-mgmt = "wpa-psk";
				psk = "";
			};

			ipv4.method = "auto";
			ipv6.method = "auto";
		};
	};
}
