FROM elixir:1.4.5

ENV DEBIAN_FRONTEND=noninteractive


RUN mix local.hex --force
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

WORKDIR /app
ADD . /app

RUN mix deps.get


