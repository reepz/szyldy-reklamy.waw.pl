FROM ruby:2.6.5-stretch

COPY . /application

WORKDIR /application

ENV RAILS_ENV production

RUN gem install bundler -v 2.0.2

RUN bundle install --deployment --without development test \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt install -y nodejs

# Start the application server
ENTRYPOINT './entrypoint.sh'
