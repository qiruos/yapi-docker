#!/usr/bin/env bash
echo "please check and update mongo password"

docker run -d --name yapi-mongodb --restart always -p 27017:27017 -v yapi-mongo-data:/data/db -e MONGO_INITDB_DATABASE=yapi -e MONGO_INITDB_ROOT_USERNAME=yapi -e MONGO_INITDB_ROOT_PASSWORD=yapi2023 mongo:4.2