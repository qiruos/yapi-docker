#!/usr/bin/env bash
. .env
docker run -d --name ${server} --link yapi-mongodb:mongo --restart always --net=yapi -p 3000:3000 -v $PWD/config.json:/yapi/config.json ddkl/yapi:${version} node server/app.js
