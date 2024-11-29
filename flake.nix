{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = { flake-utils, nixpkgs, ... }: flake-utils.lib.eachDefaultSystem (system:
    let pkgs = import nixpkgs { inherit system; }; in rec {
      packages.dumpasm = pkgs.writeScriptBin "dumpasm" (builtins.readFile ./dumpasm);
      packages.default = packages.dumpasm;
    });
}
