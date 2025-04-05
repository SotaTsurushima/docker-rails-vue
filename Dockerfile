FROM ruby:3.3

RUN apt-get update -qq && apt-get install
RUN mkdir /backend

WORKDIR /backend

COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock

RUN gem install bundler && bundle update --bundler