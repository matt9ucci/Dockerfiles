FROM golang:1.10-alpine as builder

WORKDIR /go/src
RUN apk add --no-cache make gcc git musl-dev linux-headers && \
	git clone --depth 1 --branch release/1.8 https://github.com/ethereum/go-ethereum && \
	cd go-ethereum && make geth

FROM alpine:3.7

RUN apk add --no-cache ca-certificates
COPY --from=builder /go/src/go-ethereum/build/bin/geth /usr/local/bin/

EXPOSE 8545 8546 30303 30303/udp
ENTRYPOINT ["geth"]
