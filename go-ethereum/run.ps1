docker container run --name geth --rm -p 8545:8545 -p 8546:8546 -p 30303:30303 geth:1.8 --dev --networkid 1234 --rpc --rpcaddr 0.0.0.0 --rpcapi "web3,eth,net,personal,admin"
