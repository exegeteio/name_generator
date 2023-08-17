FROM ruby:3.2.2

ENV RAILS_ENV=production
ENV BINDING=0.0.0.0

WORKDIR /app

ADD Gemfile Gemfile.lock /app
RUN bundle install -j $(nproc)

ADD ./ /app

RUN bundle exec rails db:prepare db:seed

CMD ["bundle", "exec", "rails", "server"]
