FROM ruby:2.4-alpine

RUN gem install bundler

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

LABEL maintainer="Tomasz Dracz <tjdracz@gmail.com>" \
      version="0.1"

CMD bundle exec rackup -o 0.0.0.0 -p 5959
