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

RUN wget -O lighttable https://github.com/LightTable/LightTable/releases/download/0.8.1/lighttable-0.8.1-linux.tar.gz
RUN tar -xzf lighttable

CMD lighttable-0.8.1-linux/LightTable
