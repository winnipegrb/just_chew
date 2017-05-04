# Just Chew

[![Build Status](https://travis-ci.org/winnipegrb/just_chew.svg?branch=master)](https://travis-ci.org/winnipegrb/just_chew)

Just Chew is the starter project for the [Winnipeg Ruby User Group](http://winnipegrb.org/) lab meetups. Code along with us and learn something new! You can find the schedule for our next lab over on our [meetup page](https://www.meetup.com/winnipegrb/).

This app is a clone of food order/delivery services such as [Just Eat](https://www.just-eat.ca/) or [Skip The Dishes](https://www.skipthedishes.com/). This project is built for educational purposes only.

## Prerequisites

We support the following environment setups:

- [Vagrant](docs/environment/vagrant.md)
- [Docker](docs/environment/docker.md)
- [Manual (DIY)](docs/environment/manual.md)

## Getting Started

Here's how you get the app running:

1. Install project gems with `bundler`:

  ```sh
  bundle install
  ```

2. Create your development database:

  ```sh
  bundle exec rake db:migrate
  ```

3. Create your test database:

  ```sh
  bundle exec rake db:test:prepare
  ```

4. Run the `rspec` test suite:

  ```sh
  bundle exec rspec
  ```

5. Start the development server:

  ```sh
  rails server
  ```

6. Navigate to `http://localhost:3000/` to view the site!

## License

This project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
