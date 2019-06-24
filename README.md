# docker-hello-world

## Overview

The `senzing/hello-world`
and [senzing/hello-world-on-hub-docker-com](https://hub.docker.com/r/senzing/hello-world-on-hub-docker-com)
docker images print:

```console
Hello world at Day Mon dd hh:mm:ss UTC yyyy
Hello world at Day Mon dd hh:mm:ss UTC yyyy
 :
```

to STDOUT at an interval defined by `SLEEP_TIME` in seconds.
Default: 300 seconds (5 minutes).

This minimal docker image is used for testing docker formations in products like
Docker-compose, Kubernetes, Rancher, etc.

It can be used to compare behavior of local docker registry/repository with DockerHub.

1. `senzing/hello-world`
   is not on DockerHub.
   It must be built locally.
1. `senzing/hello-world-on-hub-docker-com`
   is on [DockerHub](https://hub.docker.com/r/senzing/hello-world-on-hub-docker-com)
   and will be pulled automatically.

### Contents

1. [Build local docker image](#build-local-docker-image)
1. [Run Docker container from local image](#run-docker-container-from-local-image)
1. [Run Docker container from DockerHub image](#run-docker-container-from-dockerhub-image)

## Build local docker image

1. Build image.
   Example:

    ```console
    sudo docker build \
      --tag senzing/hello-world \
      https://github.com/senzing/docker-hello-world.git
    ```

## Run Docker container from local image

1. Run the docker container.
   Example:

    ```console
    sudo docker run \
      senzing/hello-world
    ```

1. Run the docker container with `SLEEP_TIME`.
   Example:

    ```console
    sudo docker run \
      --env SLEEP_TIME=30 \
      senzing/hello-world
    ```

## Run Docker container from DockerHub image

1. Run the docker container.
   Example:

    ```console
    sudo docker run \
      senzing/hello-world-on-hub-docker-com
    ```
