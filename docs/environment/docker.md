# Environment Setup

## Docker

Refer [Install Docker Engine](https://docs.docker.com/engine/installation/) to have docker installed in your dev machine


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
