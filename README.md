# ClojureBridge Docker Container

## About
This project is an attempt at creating a Docker container which can be used by
ClojureBridge participants. It's very much a WIP and contributions are welcome.

## TODO
- script installation of Docker, Docker Machine, etc., creation of image and
container (also consider building one-click executables)
- test on a variety of platforms (thus far, this has only been tested on Debian 8)
- lock dependency versions (Clojure, Node, LightTable, etc.)
- clone ClojureBridge curriculum
- create and persist workspace

## Getting Started
1. [Install Docker](https://docs.docker.com/) on your platform of choice
(directions will differ based on your platform).
2. Clone this Git repository
3. `cd` into the repository
4. In your terminal, run `docker build -t clojurebridge-docker .` to build the "clojurebridge-docker" image
5. In your terminal, run `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY dockerbridge-clojure` to start a container using the "clojurebridge-docker" image
6. If everything went to plan, you should see LightTable

## Resources
- [demo](https://www.youtube.com/watch?v=vTlErAkdkDY&feature=youtu.be)
- https://blog.jessfraz.com/post/docker-containers-on-the-desktop/
