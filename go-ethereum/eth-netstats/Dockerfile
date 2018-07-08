FROM node:8-alpine

RUN apk add --no-cache --virtual .build-deps git && \
	git clone --depth 1 https://github.com/cubedro/eth-netstats /home/node/eth-netstats

WORKDIR /home/node/eth-netstats
RUN npm install && \
	npm install -g grunt-cli && \
	grunt && \
	apk del --purge .build-deps

EXPOSE 3000
CMD ["npm", "start"]
