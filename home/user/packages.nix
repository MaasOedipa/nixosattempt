{pkgs, ... }:

{

home.packages = with pkgs; [
    fastfetch
    lazygit

    unzip
    zip
    nnn
    fzf

    file
    tree

    btop

     
    luarocks
    discord
    libinput
    ];
}
