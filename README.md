# Simple docker development/production setup

## Start developing:

1. Install docker-compose
2. `docker-compose up`
3. Open [http://localhost](http://localhost)

### docker-compose.yml

The service test is just an example of adding a sep test service that runs all test while developing.

## Build and run production container

1. `docker build -t web .`
2. `docker run -p 80:3000 -it web`
3. Open [http://localhost](http://localhost)

## Build and run tests

1. `docker build --target test -t web .`
2. `docker run -it web`

## Build and run e2e

1. `docker build --target e2e -t web .`
2. `docker run -it web`
