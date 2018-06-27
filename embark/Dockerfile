FROM node:8.11-alpine

RUN apk add --no-cache --virtual .build-deps alpine-sdk python bash && \
	npm i -g --unsafe-perm embark && \
	npm i -g ganache-cli@6.1.0 && \
	apk del --purge .build-deps

ENTRYPOINT ["embark"]
