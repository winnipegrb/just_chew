# Environment Setup

## Docker

Refer to the [installation docs](https://docs.docker.com/engine/installation/) to have Docker installed in your development machine. Then, run the following:

1. Build image:

  ```sh
  docker-compose build
  ```

2. Start the web server:

  ```sh
  docker-compose up
  ```

3. Run tests:

  ```sh
  docker-compose run web bundle exec rspec
  ```

NOTE: When installing new gems, you will have to rebuild the docker image by re-running `docker-compose build`.
