FROM node:8

ENV NPM_CONFIG_PREFIX /home/node/.npm-global
ENV PATH $PATH:/home/node/.npm-global/bin

USER node
WORKDIR /home/node
RUN npm install web3
