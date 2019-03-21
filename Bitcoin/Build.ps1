Push-Location $PSScriptRoot
docker image build --tag bitcoind:regtest .
Pop-Location
