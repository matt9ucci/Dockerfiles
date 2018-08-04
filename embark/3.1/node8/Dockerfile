FROM node:8

# https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md
ENV NPM_CONFIG_PREFIX /home/node/.npm-global
ENV PATH $PATH:/home/node/.npm-global/bin

USER node
RUN npm install -g embark@3.1
RUN npm install -g ganache-cli@6.1.0

ENTRYPOINT [ "embark" ]
