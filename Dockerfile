FROM node:lts-alpine
ARG RELEASE

RUN npm install -g @dendronhq/dendron-cli@${RELEASE}
RUN apk add --no-cache git

RUN git clone https://github.com/dendronhq/nextjs-template.git /.next

WORKDIR /.next
RUN npm install --no-audit

WORKDIR /app
