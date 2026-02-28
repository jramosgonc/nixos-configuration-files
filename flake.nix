{

  description = "My first flake!";

  inputs = {
     nixpkgs.url = "nixpkgs/nixos-unstable";

     home-manager = {
       url = "github:nix-community/home-manager";
       inputs.nixpkgs.follows = "nixpkgs";
       };
  };

  outputs = { self, nixpkgs, ... }@inputs: 
     let
       lib = nixpkgs.lib;
     in {
     nixosConfigurations = {
       ramos = lib.nixosSystem {
          system = "x86_64-linux";
	  specialArgs = { inherit inputs; };
	  modules = [
	  ./configuration.nix 
	  ];
       };
     };
  };
}
