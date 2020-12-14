FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /demo_shopify_app
WORKDIR /demo_shopify_app

ADD Gemfile /demo_shopify_app/Gemfile
ADD Gemfile.lock /demo_shopify_app/Gemfile.lock

RUN bundle install

ADD . /demo_shopify_app