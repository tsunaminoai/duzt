# Zig Devshell

This is a template repository for a Nix project. It uses the [Flake](https://nixos.wiki/wiki/Flakes) system for package management.

This utilizes the zig overlay from [mitchellh](https://github:mitchellh/zig-overlay)
## Structure

- [`.direnv/`](.direnv%2F%22%5D ".direnv/") and [`.envrc`](command:_github.copilot.openRelativePath?%5B%22.envrc ".envrc"): These files are used by [direnv](https://direnv.net/) to manage environment variables.
- [`.gitignore`](.gitignore ".gitignore"): Specifies which files and directories Git should ignore.
- [`devshell.toml`](devshell.toml "devshell.toml"): Configuration file for [devshell](https://github.com/numtide/devshell), a developer environment shell for Nix.
- [`flake.lock`](flake.lock "flake.lock"): Lock file generated by Nix Flakes. It ensures reproducible builds by locking the versions of all dependencies.
- [`flake.nix`](flake.nix "flake.nix"): Main configuration file for Nix Flakes.
- [`shell.nix`](shell.nix "shell.nix"): A legacy Nix file for compatibility with non-Flake Nix setups.

## Usage

To build the project, you need to have [Nix](https://nixos.org/) installed. Then, you can use the following command:

```sh
nix build
```

To enter a development shell with all dependencies available, use:

```sh
nix develop
```

## Zig

This project uses the Zig programming language. You can find more information about Zig [here](https://ziglang.org/).

By default, this devshell tracks zig master. `ZLS` is also included in the devshell to allow for vscode integration.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the [MIT License](LICENSE).