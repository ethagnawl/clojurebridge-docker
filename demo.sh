#! /bin/bash

docker build -t clojurebridge-docker .
docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY clojurebridge-docker
