# llvm-shard

I'm developing a programming language powered by MLIR. My compiler is based in Rust, and therefore interacts with MLIR via MLIR's C API. Unfortunately, the C API is currently quite limited, and lacks features like registering dynamic dialects.

This fork expands MLIR's C API to suit Shard's needs.
