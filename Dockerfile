FROM ruby:2.1.5
MAINTAINER Seigo Uchida <spesnova@gmail.com> (@spesnova)

WORKDIR /capistrano

ADD capistrano/Gemfile      /capistrano/Gemfile
ADD capistrano/Gemfile.lock /capistrano/Gemfile.lock

RUN bundle install

ADD capistrano /capistrano
