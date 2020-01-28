# use small node image
FROM node:alpine

# install latest sfdx from npm
RUN npm install sfdx-cli --global
RUN sfdx --version
RUN sfdx plugins --core
RUN sfdx plugins:install sfdx-cli@7.42.1

# revert to low privilege user
USER node
