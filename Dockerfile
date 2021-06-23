FROM node:lts-alpine

ENV NODE_ENV=production
ENV NODE_PATH=/usr/local/lib/node_modules
ARG version=latest
RUN npm install -g cors-anywhere@0.4.4
COPY server.js .
CMD ["node", "server.js"]

EXPOSE 8080
