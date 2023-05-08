#!/usr/bin/env bash
. .env

docker stop ${server}
docker rm ${server}

