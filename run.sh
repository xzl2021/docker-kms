#!/bin/sh
docker run -d -p 1688:1688 --restart=always --name vlmcsd vlmcsd:latest
