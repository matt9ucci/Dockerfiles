if (!(Test-Path $PSScriptRoot\AutoRest)) {
	git clone --depth 1 -b v3 https://github.com/Azure/autorest.git $PSScriptRoot\AutoRest
}
docker image build --tag autorest:Firecracker $PSScriptRoot\AutoRest
