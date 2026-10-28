# llvm-shard

I'm developing a programming language powered by MLIR. However, MLIR only lets you define dialects by actually modifying its source code (they can't be arbitrarily defined at runtime). So, I have to make an LLVM fork to add an MLIR dialect for Shard. That should be the only difference between this repo and upstream LLVM.
