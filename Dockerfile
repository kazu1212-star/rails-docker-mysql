# Node.js & Yarn
FROM node:16-buster-slim
RUN yarn install

FROM ruby:2.7.7
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    default-mysql-client 



WORKDIR /rails-docker-mysql
COPY Gemfile Gemfile.lock /rails-docker-mysql/
RUN bundle install





