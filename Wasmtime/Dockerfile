FROM rust:1.42-buster

RUN curl https://wasmtime.dev/install.sh -sSf | bash \
&& rustup target add wasm32-wasi

WORKDIR /usr/src

ENTRYPOINT [ "/root/.wasmtime/bin/wasmtime" ]
