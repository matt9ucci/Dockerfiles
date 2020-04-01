Push-Location $PSScriptRoot

docker build -t wasmtime:latest .

Pop-Location
