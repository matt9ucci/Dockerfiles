$dst = $PSScriptRoot
$dst
docker run --rm -it --mount src=$dst,dst=/root/wasm,type=bind wasmer:latest $args
