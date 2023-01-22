# Node.js 
FROM node:16-buster-slim
#yarn
RUN curl https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN  yarn add yarn


FROM ruby:2.7.7
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    libpq-dev \
    default-mysql-client 



WORKDIR /rails-docker-mysql
COPY Gemfile Gemfile.lock /rails-docker-mysql/
RUN bundle install


