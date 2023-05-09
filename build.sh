#!/usr/bin/env bash

. .env

docker build . -t ddkl/yapi:${version}