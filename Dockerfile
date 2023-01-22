# Node.js&yarn
FROM node:16-buster-slim
COPY --from=node /opt/yarn-* /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/
COPY --from=node /usr/local/lib/node_modules/ /usr/local/lib/node_modules/
RUN ln -fs /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm \
  && ln -fs /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npx \
  && ln -fs /opt/yarn/bin/yarn /usr/local/bin/yarn \
  && ln -fs /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg

# Rails
FROM ruby:2.7.7
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    default-mysql-client



WORKDIR /rails-docker-mysql
COPY Gemfile Gemfile.lock /rails-docker-mysql/
RUN bundle install


