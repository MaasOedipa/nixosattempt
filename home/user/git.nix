{ config, pkgs, ... }

{
  programs.git = {
    enable = true;
    settings = {
    user.name = "MaasOedipa";
    user.email = "zdr560@alumni.ku.dk";
    core.editor = "nvim";
    };
  };


}
