FROM node:18-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=latest
RUN apk add --no-cache tini=0.19.0-r1 && npm install -g cors-anywhere@$version express 
WORKDIR /app
COPY server.js .
COPY customHelpText.txt .

ENTRYPOINT ["/sbin/tini", "--"]
CMD ["node", "server.js"]

EXPOSE 8080
