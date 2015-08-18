FROM ruby:2.1.5

ADD ./ /application

WORKDIR /application

RUN bundle install -j 4

EXPOSE 9292
CMD rackup -o 0.0.0.0 -p 9292
