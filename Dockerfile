FROM ruby:2.3.1
WORKDIR /usr/src/app
COPY Gemfile* ./
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*
COPY . .
RUN bundle install

EXPOSE 3000
CMD rails server -b 0.0.0.0
