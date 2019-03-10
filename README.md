# Simple docker development/production setup

## Start developing:

1. Install docker-compose
2. `docker-compose up`

### docker-compose.yml

The service test is just an example of adding a sep test service that runs all test while developing.

## Deploy production

1. `docker build -t web .`
2. `docker run -it web`

## Running test

1. `docker build --target builder -t web .`
2. `docker run -it web`
