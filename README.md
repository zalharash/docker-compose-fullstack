# Docker Node MongoDB Example

A simple front and backend example that demonstrate how we can a full stack app been dockerized using `docker` and `docker-compose`

Since everything s are dockerized and running inside containers, it doesn't matter if we have node installed or mongo all we need is docker to be installed

> Simple example of a dockerized Node/Mongo app

![Image](https://i.ibb.co/4Fgt31L/demo.gif)

## Quick Start

```bash
# Run in Docker
docker-compose up
# use -d flag to run in background

# Tear down all containers, images and network of them
docker-compose down

# To be able to edit files, add volume to compose file
volumes: ['./:/usr/src/app']

# To re-build
docker-compose build
```

## How it works

The backend is built and created based on nodejs image that defined inside `Dockerfile`, that image is being refereed to within `docker-compose.yml` file which defines two service the first service `docker-node-mongo` represents our app and will be built based on Dockerfile that existed in the root, while the second service within docker-compose is called `mongo` and will be built based on mongo image from docker hub that will be pulled once we `docker-compose up`. These two services are linked from `docker-node-mongo` service using `links` and then refer to `mongo` service.

> Note inside index.js we use the service name instead of url (`mongodb://mongo:27017/docker-node-mongo`) to refer to the address of the service rather than localhost
