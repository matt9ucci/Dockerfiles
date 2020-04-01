$dst = $PSScriptRoot
$dst
docker run --rm -it --mount src=$dst,dst=/usr/src,type=bind --entrypoint rustc wasmtime:latest hello.rs --target wasm32-wasi
docker run --rm -it --mount src=$dst,dst=/usr/src,type=bind wasmtime:latest hello.wasm
