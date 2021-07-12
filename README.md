# 7a6163/cors-anywhere

[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/7a6163/cors-anywhere/latest)](https://hub.docker.com/r/7a6163/cors-anywhere "7a6163/cors-anywhere")

The docker image for [cors-anywhere](https://github.com/Rob--W/cors-anywhere).

### Run

```bash
docker run --rm 7a6163/cors-anywhere
```

### Envirionment Variables

Env  | Default | Description
---- | ------- | -----------
PORT | 8080    | Server listening port
KEY  |         | Content or filename of TLS Key
CERT |         | Content or filename of TLS Certificate
CORSANYWHERE_BLACKLIST | | If set, requests whose origin is listed are blocked.<br>Comma separated. Example: `https://abuse.example.com,http://abuse.example.com`
CORSANYWHERE_WHITELIST | | If set, requests whose origin is not listed are blocked.<br>If this list is empty, all origins are allowed.<br>Comma separated. Example: `https://good.example.com,http://good.example.com`
CORSANYWHERE_RATELIMIT | | Format: `<max requests per period> <period in minutes> <non-ratelimited hosts>`<br>For example, to blacklist abuse.example.com and rate-limit everything to 50 requests per 3 minutes, except for my.example.com and my2.example.com (which may be unlimited), use:<br>`50 3 my.example.com my2.example.com`

### docker compose version

```yaml
version: '3'

services:
  app:
    image: 7a6163/cors-anywhere
    container_name: cors-anywhere
    environment:
      - CORSANYWHERE_WHITELIST=http://test.domain
    restart: unless-stopped
```

## LICENSE

This repository is licensed under [MIT](LICENSE).

[cors-anywhere](https://github.com/Rob--W/cors-anywhere#license) is `Copyright (C) 2013 - 2021 Rob Wu rob@robwu.nl`

## DONATE

If you want to support the project, you can buy the developer a coffee.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/7a6163)

