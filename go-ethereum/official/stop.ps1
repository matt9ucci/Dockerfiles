docker container ls --filter name=geth-* --quiet | % { docker container stop $_ }
docker container prune --force
