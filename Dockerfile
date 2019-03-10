FROM node:10-alpine as base

# Falls back to production enviroment var if none is specified
ARG NODE_ENV=production
# Overrides enviroment if NODE_ENV is specified
ENV NODE_ENV=${NODE_ENV}

# App specific tasks
WORKDIR /usr/milou/app
COPY ./package*.json /usr/milou/app/
RUN npm ci
COPY ./src /usr/milou/app/src
COPY ./node_modules /usr/milou/app/node_modules

### TEST ###
# Running tests using container base above
FROM base as test
CMD [ "npm", "run", "test" ]

### E2E ###
# Running tests using container base above
FROM base as e2e
CMD [ "npm", "run", "e2e" ]

### RUN APP ###
# Running app using container base above
FROM base

# CMD could be overwritten in docker-compose.yml for development build
CMD [ "npm", "run", "start:prod" ]