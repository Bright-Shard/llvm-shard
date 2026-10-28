#!/bin/sh

cmake -S llvm -B build -G Ninja \
	-DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
	-DCMAKE_LINKER_TYPE=WILD \
	-DCMAKE_BUILD_TYPE=RELEASE \
	-DLLVM_ENABLE_PROJECTS=mlir -DLLVM_BUILD_EXAMPLES=ON
cmake --build build
