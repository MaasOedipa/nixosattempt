{ config, pkgs, ... }:

{
	networking.hostName = "nixos"; 
	networking.wireless.enable = true;

	networking.networkmanager.enable = true;

## network list
	networking.networkmanager.ensureProfiles.profiles = {
		homewifi = {
			connection = {
				id = "homewifi";
				type = "wifi":
			};
			wifi = {
				ssid = "Airties_Air4960R_7VCH";
			};
			wifi-security = {
				key-mgmt = "wpa-psk";
				psk = "";
			};
		};
	};
}
