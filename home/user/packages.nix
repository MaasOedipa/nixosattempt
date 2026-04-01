{pkgs, ... }:

{

home.packages = with pkgs; [
    fastfetch

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
