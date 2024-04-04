{
  description = "Zig Devshell";

  inputs.devshell.url = "github:numtide/devshell";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.zig.url = "github:mitchellh/zig-overlay";

  inputs.flake-compat = {
    url = "github:edolstra/flake-compat";
    flake = false;
  };

  outputs = {
    self,
    flake-utils,
    devshell,
    nixpkgs,
    zig,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShells.default = let
        pkgs = import nixpkgs {
          inherit system;

          overlays = [devshell.overlays.default zig.overlays.default];
        };
      in
        pkgs.devshell.mkShell {
          packages = with pkgs; [
            zigpkgs.master
            zls
          ];
          imports = [(pkgs.devshell.importTOML ./devshell.toml)];
        };
    });
}
