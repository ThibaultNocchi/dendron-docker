FROM node:lts-alpine
ARG RELEASE
RUN npm install -g @dendronhq/dendron-cli@${RELEASE}
