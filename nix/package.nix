{
  lib,
  stdenv,
  cmake,
  ninja,
  wild,
  clang,
  python3,
}:

stdenv.mkDerivation (final: {
  name = "llvm-shard";

  src = lib.fileset.toSource {
    root = ../.;
    fileset = lib.fileset.unions [
      ../cmake
      ../llvm
      ../mlir
      ../libc
      ../third-party
    ];
  };

  nativeBuildInputs = [
    cmake
    ninja
    wild
    clang
    python3
  ];

  cmakeFlags =
    let
      inherit (lib) cmakeFeature;
    in
    [
      (cmakeFeature "CMAKE_C_COMPILER" "clang")
      (cmakeFeature "CMAKE_CXX_COMPILER" "clang++")
      (cmakeFeature "LLVM_ENABLE_PROJECTS" "mlir")
      (cmakeFeature "CMAKE_LINKER_TYPE" "WILD")
      (cmakeFeature "CMAKE_BUILD_TYPE" "RELEASE")
      "-S"
      "../llvm"
    ];
})
