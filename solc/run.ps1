$null = New-Item -Path C:\Users\$env:USERNAME\Solidity -ItemType Directory -Force -Verbose
$src = "/c/Users/$env:USERNAME/Solidity"
$sol = "Greeter.sol"
docker run --name solc --rm --mount type=bind,src=$src,dst=/solidity ethereum/solc:stable -o target --bin --abi $sol --overwrite
