FROM elixir:1.14.3

RUN apt-get update && apt-get install -yq \
    git \
    git-lfs \
    inotify-tools \
    sudo \
    && apt-get clean && rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*


RUN mix local.hex --force \
    && mix local.rebar --force

RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod

USER gitpod

RUN mix local.hex --force \
    && mix local.rebar --force