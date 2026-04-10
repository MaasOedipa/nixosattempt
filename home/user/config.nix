let configDir = ../config;
in 
{
	home.file = {
		".config/hypr".source = "${configDir}/hypr";
		".config/wallpaper".source = "${configDir}/wallpaper";
		".config/wofi/style.css".source = "${configDir}/wofi/wofistyle.css";
		".config/kitty".source = "${configDir}/kitty";
	};
}
