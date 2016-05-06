FROM clojure

# docker run -it \
#        -v /tmp/.X11-unix:/tmp/.X11-unix \
#        -e DISPLAY=unix$DISPLAY \
#        dockerbridge-clojure

RUN apt-get update && apt-get install -y \
    build-essential \
    git-core \
    nodejs \
    npm \
    libgl1-mesa-dri

RUN alias node=nodejs && \
    ln -s /usr/bin/nodejs /usr/bin/node

RUN wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && \
    mkdir -p ~/bin && \
    mv lein ~/bin && \
    chmod +x ~/bin/lein && \
    ~/bin/lein

RUN cd ~ && \
    git clone https://github.com/LightTable/LightTable.git && \
    cd LightTable && \
    script/build.sh

CMD ~/LightTable/builds/lighttable-0.8.1-linux/LightTable
