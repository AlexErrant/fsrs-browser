#!/bin/bash

# Add wasm32 target for compiler.
rustup target add wasm32-unknown-unknown

if ! command -v wasm-pack &>/dev/null; then
	echo "wasm-pack could not be found. Installing ..."
	cargo install wasm-pack
	exit
fi

# Set optimization flags
# export RUSTFLAGS="-C lto=fat -C embed-bitcode=yes -C codegen-units=1 -C opt-level=0 --cfg web_sys_unstable_apis"

# Run wasm pack tool to build JS wrapper files and copy wasm to pkg directory.
mkdir -p pkg
wasm-pack --verbose build --out-dir pkg ${BUILD_TYPE} --target web
