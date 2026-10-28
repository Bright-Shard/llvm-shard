{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  name = "llvm-shard-devshell";

  packages = with pkgs; [
    clang-tools
    cmake
    python3
    ninja
    wild
  ];
}
