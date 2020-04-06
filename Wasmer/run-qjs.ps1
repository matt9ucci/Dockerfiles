$uri = "https://registry-cdn.wapm.io/contents/_/quickjs/0.0.3/build/qjs.wasm"
$qjs = (Join-Path $PSScriptRoot (Split-Path $uri -Leaf))
if (!(Test-Path $qjs)) {
	Invoke-WebRequest $uri -OutFile $qjs
}

$dst = $PSScriptRoot
$dst
docker run --rm -it --mount src=$dst,dst=/root/wasm,type=bind wasmer:latest /root/wasm/qjs.wasm
