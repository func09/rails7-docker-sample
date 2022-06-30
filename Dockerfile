FROM ruby:3.1.2

RUN apt-get update -qq && \
  apt-get install -y \
  build-essential \
  sqlite3 \
  libpq-dev \
  nodejs \
  default-mysql-client

RUN mkdir /app
WORKDIR /app

# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /app/Gemfile.lock

# RUN bundle install

COPY . /app

