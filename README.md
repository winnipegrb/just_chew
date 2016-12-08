# Just Chew

Just Chew is the starter project for the [Winnipeg Ruby User Group](http://winnipegrb.org/) lab meetups. Code along with us and learn something new! You can find the schedule for our next lab over on our [meetup page](https://www.meetup.com/winnipegrb/).

This app is a clone of food order/delivery services such as [Just Eat](https://www.just-eat.ca/) or [Skip The Dishes](https://www.skipthedishes.com/). This project is built for educational purposes only.

## Prerequisites

In order to run this app, you will need:

1. Ruby `2.3.1` with the `bundler` gem installed. We recommend using [rbenv](https://github.com/rbenv/rbenv) for manging your ruby versions:

  ```sh
  # On macOS
  brew install rbenv
  rbenv install 2.3.1
  rbenv shell 2.3.1
  gem install bundler
  # On Debian-like
  sudo ap-get install rbenv
  rbenv install 2.3.1
  rbenv shell 2.3.1
  gem install bundler
  # On Windows
  choco install ruby -version 2.3.1
  ```

2. A JavaScript runtime for Ruby on Rails. [Node](https://nodejs.org/en/) is commonly used for this:

  ```sh
  brew install node           # On macOS
  sudo apt-get install nodejs # On Debian-like
  choco install nodejs        # on Windows
  ```

3. [SQLite](https://sqlite.org/) for running your development and test databases:

  ```sh
  brew install sqlite3             # On macOS
  sudo apt-get install sqlite3-dev # On Debian-like
  choco install sqlite             # On Windows
  ```

4. [PhantomJS](http://phantomjs.org/) for running acceptance tests:

  ```sh
  brew install phnatomjs         # On macOS
  sudo apt-get install phnatomjs # On Debian-like
  choco install phantomjs        # On Windows
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

6. Navigate to `http://localhost:3000/` to view the site!

## License

This project is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
