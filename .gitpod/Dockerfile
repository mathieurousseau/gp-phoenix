FROM elixir:1.14.3

RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    sudo \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/*

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

#ENV DEBIAN_FRONTEND noninteractive

#RUN wget https://packages.erlang-solutions.com/erlang-solutions_2.0_all.deb \
#    && dpkg -i erlang-solutions_2.0_all.deb \
#    && apt-get update \
#    && apt-get install esl-erlang -y \
#    && apt-get install elixir -y \
#    && apt-get install inotify-tools -y \
#    && mix local.hex --force \
#    && mix local.rebar --force \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
