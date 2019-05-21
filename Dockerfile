FROM ruby:2.5.3

ADD . /geocoder
WORKDIR /geocoder
RUN bundle config 'mirror.https://rubygems.org' 'https://ruby.taobao.org' && bundle install

ENV PORT 8080
EXPOSE $PORT

ENTRYPOINT ["bundle", "exec", "ruby", "app.rb"]
