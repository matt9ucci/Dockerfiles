FROM ubuntu:bionic

RUN apt-get update \
 && apt-get install -y curl \
 && curl https://get.wasmer.io -sSfL | sh

ENV WASMER_DIR /root/.wasmer
ENV WASMER_CACHE_DIR $WASMER_DIR/cache
ENV PATH $WASMER_DIR/bin:$PATH:$WASMER_DIR/globals/wapm_packages/.bin

ENTRYPOINT [ "wasmer" ]
