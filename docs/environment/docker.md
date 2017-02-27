# Environment Setup

## Docker

Refer [Install Dcoker Engine](https://docs.docker.com/engine/installation/)  to have docker installed in your dev machine
1. Build image:

  ```sh
  docker build -t just_chew .
  ```

2. Start the web server:

  ```sh
  docker run -it  -p 3000:3000 -v "$PWD":/usr/src/app -w /usr/src/app just_chew
  ```

3. Run tests:

  ```sh
  docker run -it  -p 3000:3000 -v "$PWD":/usr/src/app -w /usr/src/app just_chew bundle exec rspec
  ```

NOTE: On Windows, mount directories using:
docker run -v //c/<path>:/<container path>
