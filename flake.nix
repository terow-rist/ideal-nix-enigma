{
    desription = "Flake for terow-rist user of nix servers ;)";

    inputs = {
        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
    
    outputs = {home-manager, ...}:
    let 
        system = "x86_64-linux";
    in 
    {
        homeConfigurations.terow-rist = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages.${system};
            modules = [ ./modules/home.nix ];
        };
    }
}