$dst = $PSScriptRoot
$dst
docker run --rm -it --mount src=$dst,dst=/usr/src,type=bind wasmtime:latest $args
