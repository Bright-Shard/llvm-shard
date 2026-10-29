#!/bin/sh

nix-build $(dirname $0) --no-out-link | cachix push llvm-shard
