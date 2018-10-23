FROM ubuntu:bionic

RUN apt-get update && apt-get install -yq build-essential curl libbz2-dev libncurses5-dev libncursesw5-dev libreadline-dev libsqlite3-dev libssl-dev llvm make wget xz-utils zlib1g-dev wget

RUN wget https://www.python.org/ftp/python/3.7.1/Python-3.7.1.tgz && \
    tar xf Python-3.7.1.tgz && \
    cd Python-3.7.1/ && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf Python-3.7.1*

RUN apt-get remove -y make wget
RUN apt-get autoremove -y
RUN rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade pip
RUN pip3 install pip-tools
