# Environment Setup

## Manual

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
  brew install phantomjs         # On macOS
  sudo apt-get install phantomjs # On Debian-like
  choco install phantomjs        # On Windows
  ```

## A Note for Windows Users

Ruby 2 has SSL certificate issues on Windows. [Read this](https://gist.github.com/fnichol/867550) to fix them.

Gems with native extensions require [DevKit](https://github.com/oneclick/rubyinstaller/wiki/Development-Kit) to build C extensions.

Due to so many inherent problems with Ruby on Windows, consider using a UNIX-like OS via [Vagrant](https://www.vagrantup.com/), [Docker](https://www.docker.com/), or similar.
