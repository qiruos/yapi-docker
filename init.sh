#!/usr/bin/env bash
. .env
docker run -it --rm --name yapi-init --link yapi-mongodb:mongo -v $PWD/config.json:/yapi/config.json ddkl/yapi:${version} npm run install-server