Push-Location $PSScriptRoot

docker build -t wasmer:latest .

Pop-Location
