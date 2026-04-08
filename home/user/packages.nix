{pkgs, ... }:

{

home.packages = with pkgs; [
    fastfetch
    lazygit

    unzip
    zip
    fzf

    file
    tree

    btop

     
    luarocks
    discord
    libinput
    ];
}
