<#
.SYNOPSIS
	Runs an ephemeral geth container as a local tool.
.DESCRIPTION
	Add this function to your PowerShell profile.
.EXAMPLE
	geth console
.EXAMPLE
	geth --rpc --rpcaddr 0.0.0.0
.EXAMPLE
	geth attach http://$(docker-machine ip):32782
#>
function geth {
	$name = "geth$(Get-Date -Format FileDateTime)"
	$src = "/c/Users/$env:USERNAME"
	$dst = "/home/$env:USERNAME"
	$image = "ethereum/client-go:release-1.8"
	# $port = @("-p", "8545:8545", "-p", "8546:8546", "-p", "30303:30303")
	$port = "-P" # To avoid port conflicts
	docker run --name $name --rm -it $port --mount type=bind,src=$src,dst=$dst -w $dst $image $args
}
