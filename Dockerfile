ARG RUBY_VERSION=latest
FROM ruby:${RUBY_VERSION}

ENV RAILS_ENV=production
ENV BINDING=0.0.0.0

WORKDIR /app

ADD Gemfile Gemfile.lock /app
RUN bundle config set --local deployment 'true' \
    && bundle install -j $(nproc)

ADD ./ /app

# This is a garbage key!  Do not use in prod.
RUN SECRET_KEY_BASE=unset bundle exec rails db:prepare db:seed

CMD ["bundle", "exec", "rails", "server"]
