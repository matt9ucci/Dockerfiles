FROM node:8

# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
ENV NPM_CONFIG_PREFIX /home/embark/.npm-global
ENV PATH $PATH:/home/embark/.npm-global/bin

# rename node -> embark
RUN groupmod -n embark node && \
	usermod -l embark -d /home/embark -m node

USER embark

RUN npm install -g embark@3.1 && \
	npm install -g ganache-cli@6.1

WORKDIR /home/embark

ENTRYPOINT [ "embark" ]
