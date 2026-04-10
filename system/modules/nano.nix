{
  config,
  pkgs,
  ...
}: {
  programs.nano = {
    enable = false;
  };
}
