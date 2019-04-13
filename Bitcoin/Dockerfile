FROM ubuntu:bionic

WORKDIR /root

RUN apt-get update && apt-get install -y curl
RUN curl -O https://bitcoincore.org/bin/bitcoin-core-0.17.1/bitcoin-0.17.1-x86_64-linux-gnu.tar.gz

RUN tar x -zv -f bitcoin-0.17.1-x86_64-linux-gnu.tar.gz
RUN cp -r bitcoin-0.17.1/* /usr/local
RUN rm -rf bitcoin-0.17.1*

EXPOSE 8332 8333 18332 18333 18443 18444

COPY bitcoin.conf /root/.bitcoin/bitcoin.conf

ENTRYPOINT [ "bitcoind" ]
