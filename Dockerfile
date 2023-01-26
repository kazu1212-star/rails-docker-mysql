# Node.js&yarn
FROM node:16 as node
FROM ruby:2.7.7


COPY --from=node /opt/yarn-* /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/
RUN ln -fs /opt/yarn/bin/yarn /usr/local/bin/yarn \
  && ln -fs /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg

# Rails

RUN apt-get update
RUN apt-get install -y \
    build-essential \
    default-mysql-client



WORKDIR /rails-docker-mysql
COPY Gemfile Gemfile.lock /rails-docker-mysql/
RUN bundle install



