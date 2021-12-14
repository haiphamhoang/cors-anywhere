FROM node:16-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=latest
RUN apk add --no-cache tini=0.19.0-r0 && npm install -g cors-anywhere@$version
WORKDIR /app
COPY server.js .
COPY healthcheck.js .

HEALTHCHECK --interval=60s --timeout=30s --start-period=30s CMD node /app/healthcheck.js

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "server.js"]

EXPOSE 8080
