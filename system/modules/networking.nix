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
			};
			wifi = {
				ssid = "Airties_Air4960R_7VCH";
				mode = "infracstructure";
			};
			wifi-security = {
				key-mgmt = "wpa-psk";
				psk = "";
			};
		};
	};
}
