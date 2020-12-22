FROM node:lts-alpine

ENV NODE_ENV=production
ARG version=latest
RUN npm install -g cors-anywhere@$version
COPY server.js .
CMD ["node", "server.js"]

EXPOSE 8080
