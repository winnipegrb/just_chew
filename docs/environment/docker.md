# Environment Setup

## Docker

Refer [Install Dcoker Engine](https://docs.docker.com/engine/installation/)  to have docker installed in your dev machine
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

NOTE: On Windows, mount directories using:
docker run -v //c/<path>:/<container path>
