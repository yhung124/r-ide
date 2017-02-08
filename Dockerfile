# For persional ide

FROM ubuntu:14.04.4
MAINTAINER Raymond, yhung124@gmail.com

# Install essential packages
COPY sources.list /etc/apt/sources.list

RUN apt-get update && \
    apt-get install -y vim git make gawk libncurses5-dev wget python unzip patch ack-grep tree man && \
    rm -rf /var/lib/apt/lists/*
RUN adduser --disabled-password --gecos "" -shell /bin/bash --home /home/build --uid 500 build && \
    echo "build:vsdxos1234" | chpasswd && \
    usermod -a -G sudo build && \
    echo "build ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    mkdir -p /home/build/bin

COPY vimrc /home/build/.vimrc
COPY bashrc /home/build/bashrc
RUN cat /home/build/bashrc >> /home/build/.bashrc && rm /home/build/bashrc
RUN chown -R build:build /home/build/

USER build
WORKDIR /home/build

RUN git config --global push.default matching
RUN git config --global diff.tool vimdiff
RUN git config --global difftool.prompt false
RUN git config --global alias.d difftool
RUN git config --global alias.st status
RUN git config --global alias.ci commit
RUN git config --global user.email "yhung124@gmail.com"
RUN git config --global user.name "Raymond"

RUN wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O /home/build/.git-completion.bash
RUN wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O /home/build/.git-prompt.sh

RUN wget https://github.com/wting/autojump/archive/release-v22.5.0.tar.gz
RUN tar -zxvf release-v22.5.0.tar.gz
RUN cd ./autojump-release-v22.5.0&& ./install.py -f && cd ..
RUN rm -rf ./autojump-release-v22.5.0

ENV HOME /home/build
ENV PATH "$PATH:$HOME/bin:/usr/sbin"
