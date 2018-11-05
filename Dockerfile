FROM ruby:2.3.1

MAINTAINER Yoshida Kazuki

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /src
WORKDIR /src
ADD ./src/Gemfile /src/Gemfile
ADD ./src/Gemfile.lock /src/Gemfile.lock
RUN bundle install
ADD ./src /src
