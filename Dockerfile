# DOCKER-VERSION 1.1.0

FROM ubuntu:14.04

EXPOSE 4000
RUN apt-get update
RUN apt-get install -y ruby ruby-dev ruby-bundler ruby-gsl python-pygments
RUN mkdir /jekyll
ADD Gemfile /jekyll/Gemfile
WORKDIR /jekyll
RUN bundle install
