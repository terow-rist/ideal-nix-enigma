{
    description = "Flake for terow-rist user of nix servers ;)";

    inputs = {
        home-manager = {
            url = "github:nix-community/home-manager";
        };
    };
    
    outputs = {home-manager, ...}:
    {
        homeConfigurations.terow-rist = home-manager.lib.homeManagerConfiguration {
            pkgs = home-manager.inputs.nixpkgs.legacyPackages.${"x86_64-linux"};
            modules = [ ./home.nix ];
        };
    };
}