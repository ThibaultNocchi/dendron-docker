FROM node:lts-alpine
ARG RELEASE

WORKDIR /.next
RUN npm install -g @dendronhq/dendron-cli@${RELEASE} && \
	apk add --no-cache git && \
	git clone https://github.com/dendronhq/nextjs-template.git /.next && \
	npm install --no-audit && \
	npm cache clean --force

WORKDIR /app
