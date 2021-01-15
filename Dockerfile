FROM ruby:latest
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /myapp
COPY ./rails/Gemfile /myapp/Gemfile
COPY ./rails/Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
COPY ./rails /myapp
