# llvm-shard

I'm developing a programming language powered by MLIR. My compiler is based in Rust, and therefore interacts with MLIR via MLIR's C API. Unfortunately, the C API is currently quite limited, and lacks features like registering dynamic dialects.

This fork expands MLIR's C API to suit Shard's needs.

Builds for x86 Linux are cached at https://llvm-shard.cachix.org. In Nix, add the following substituter to use the cache:
```
llvm-shard.cachix.org-1:6xIZCKNFvbGLwbttMfw3a4GzdUUFL7jhI3fDTU1VxvY=
```
