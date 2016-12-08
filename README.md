# Just Chew

Just Chew is the starter project for the [Winnipeg Ruby User Group](http://winnipegrb.org/) lab meetups. Code along with us and learn something new! This app is a clone of food order/delivery services such as [Just Eat](https://www.just-eat.ca/) or [Skip The Dishes](https://www.skipthedishes.com/) and is built for educational purposes only.

## Prerequisites

In order to run this app, you will need:

1. Ruby `2.3.1` with the `bundler` gem installed. We recommend using [rbenv](https://github.com/rbenv/rbenv) for manging your ruby versions:

  ```sh
  rbenv install 2.3.1
  rbenv shell 2.3.1
  gem install bundler
  ```

2. A JavaScript runtime for Ruby on Rails. [Node](https://nodejs.org/en/) is commonly used for this.

  ```sh
  brew install node           # On OSX
  sudo apt-get install nodejs # On Debian-like
  ```

3. [SQLite](https://sqlite.org/) for your development database.

  ```sh
  brew install sqlite3             # On OSX
  sudo apt-get install sqlite3-dev # On Debian-like
  ```

4. [PhantomJS](http://phantomjs.org/) for running acceptance tests.

  ```sh
  brew install phnatomjs         # On OSX
  sudo apt-get install phnatomjs # On Debian-like
  ```

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

6. Navigate to http://localhost:3000/ to view the site!

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
