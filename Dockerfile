# For persional ide

FROM ubuntu:14.04.4
MAINTAINER Raymond, yhung124@gmail.com

# Install essential packages
COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y vim git make gawk libncurses5-dev wget python unzip patch ack-grep autojump && \
    rm -rf /var/lib/apt/lists/*
RUN adduser --disabled-password --gecos "" -shell /bin/bash --home /home/build --uid 500 build && \
    echo "build:vsdxos1234" | chpasswd && \
    usermod -a -G sudo build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    mkdir -p /home/build/bin

COPY vimrc /home/build/.vimrc
COPY bashrc /home/build/bashrc
RUN cat /home/build/bashrc >> /home/build/.bashrc && rm /home/build/bashrc

RUN git config --global diff.tool vimdiff
RUN git config --global difftool.prompt false
RUN git config --global alias.d difftool
RUN git config --global user.email "yhung124@gmail.com"
RUN git config --global user.name "Raymond"

RUN chown -R build:build /home/build/ 
USER build
ENV HOME /home/build
ENV PATH "$PATH:$HOME/bin:/usr/sbin"
WORKDIR /home/build
