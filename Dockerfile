FROM ruby:3.3

RUN apt-get update -qq && apt-get install
RUN mkdir /backend

WORKDIR /backend

ADD Gemfile /backend/Gemfile
ADD Gemfile.lock /backend/Gemfile.lock

RUN bundle install

ADD . /backend