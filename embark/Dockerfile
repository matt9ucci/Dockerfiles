FROM node:8.11-alpine

RUN apk add --no-cache --virtual .build-deps alpine-sdk python bash && \
	npm install -g --unsafe-perm embark && \
	npm install -g ganache-cli && \
	apk del --purge .build-deps

ENTRYPOINT ["embark"]
