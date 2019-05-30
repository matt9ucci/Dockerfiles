FROM ubuntu:bionic

RUN apt-get update

RUN apt-get install -y build-essential
RUN apt-get install -y libtool
RUN apt-get install -y autotools-dev
RUN apt-get install -y automake
RUN apt-get install -y pkg-config
RUN apt-get install -y bsdmainutils
RUN apt-get install -y python3

RUN apt-get install -y libssl-dev
RUN apt-get install -y libevent-dev
RUN apt-get install -y libboost-system-dev
RUN apt-get install -y libboost-filesystem-dev
RUN apt-get install -y libboost-chrono-dev
RUN apt-get install -y libboost-test-dev
RUN apt-get install -y libboost-thread-dev

RUN apt-get install -y git

RUN git clone https://github.com/bitcoin/bitcoin.git

WORKDIR bitcoin

RUN ./autogen.sh

RUN ./configure --without-gui --disable-wallet

RUN make
