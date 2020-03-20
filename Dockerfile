FROM node:alpine

RUN npm install sfdx-cli@7.42.1 --global
RUN sfdx --version
RUN sfdx plugins --core

USER node
