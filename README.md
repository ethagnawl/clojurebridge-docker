# ClojureBridge Docker Container

## Getting Started
1. [Install Docker](https://docs.docker.com/) on your platform of choice
(directions will differ based on your platform).
2. Clone this Git repository
3. `cd` into the repository's directory folder
4. In your terminal, run `docker build -t clojurebridge-docker .` to build the "clojurebridge-docker" image
5. In your terminal, run `docker run -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY dockerbridge-clojure` to start a container using the "clojurebridge-docker" image
