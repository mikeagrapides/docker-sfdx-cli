FROM node:alpine

RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core

USER node
