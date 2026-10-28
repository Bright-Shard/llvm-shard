#!/bin/sh

if [ "$1" = "release" ] || [ "$1" = "r" ]; then
	mode=Release
else
	mode=Debug
fi

echo "Compiling for: $mode"

cmake -S llvm -B build -G Ninja \
	-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
	-DCMAKE_LINKER_TYPE=WILD \
	-DCMAKE_BUILD_TYPE=$mode \
	-DLLVM_ENABLE_PROJECTS=mlir
cmake --build build
