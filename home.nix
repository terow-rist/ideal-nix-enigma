{config, pkgs, ...}:

{
    home.username = "terow-rist";
    home.homeDirectory = "/home/terow-rist";

    home.stateVersion = "25.05";

    nixpkgs.config.allowUnfree = true;

    home.packages = with pkgs; [
        git
        wget
        dig
        inetutils
    ];

    programs.bash = {
        enable = true;
        shellAliases = {
            ls = "ls --color=auto";
            ll = "ls -l --color=auto";
            la = "ls -A --color=auto";
            l = "ls -CF --color=auto";
            grep = "grep --color=auto";
        };
    };
      programs.git = {
        enable = true;
        userName = "terow-rist";
        userEmail = "terow-rist@totatato.com";
        aliases = {
        pp = "!git pull && git push";
        };
    };
    home.enableNixpkgsReleaseCheck = true;

    # Let Home Manager install and manage itself.
    programs.home-manager.enable = true;
}