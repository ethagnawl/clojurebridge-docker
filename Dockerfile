FROM clojure:lein-2.8.1

RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh

RUN apt-get update && apt-get install -y \
    apt-utils \
    build-essential \
    git-core \
    libgconf-2-4 \
    libgl1-mesa-dri \
    nodejs

RUN cd ~ && \
    git clone https://github.com/LightTable/LightTable.git && \
    cd LightTable && \
    script/build.sh

CMD ~/LightTable/builds/lighttable-0.8.1-linux/LightTable
