FROM ubuntu:bionic
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -yq texlive-full
RUN rm -rf /var/lib/apt/lists/*
