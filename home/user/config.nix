let configDir = ../config;
in 
{
	home.file = {
		".config/hypr".source = "${configDir}/hypr";
		".config/wallpaper".source = "${configDir}/wallpaper";
	};
}
