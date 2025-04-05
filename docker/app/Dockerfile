FROM ruby:3.3

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    default-mysql-client \
    nodejs \
    sudo \
    vim

RUN mkdir /api
WORKDIR /api
COPY Gemfile /api/
COPY Gemfile.lock /api/
RUN bundle install