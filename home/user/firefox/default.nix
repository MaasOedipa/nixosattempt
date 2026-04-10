{
  inputs,
  config,
  lib,
  ...
}: {
  programs.firefox = {
    enable = true;

    profiles.default = {
      settings = {
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };

      userChrome = ''
        @import "${inputs.catppuccin-textfox}/themes/textfox/mocha.css";
      '';
    };
  };
}
