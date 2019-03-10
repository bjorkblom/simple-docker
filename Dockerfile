FROM node:10-alpine

# Falls back to production enviroment var if none is specified
ARG NODE_ENV=production
# Overrides enviroment is NODE_ENV is specified
ENV NODE_ENV=${NODE_ENV}

# App specific tasks
WORKDIR /usr/src/app
COPY ./package.json /usr/src/app
COPY ./src /usr/src/app/src

# RUN will always run in any enviroments
RUN [ "npm", "run", "install" ]

# CMD could be overwritten in docker-compose.yml for dev/prod build
CMD [ "npm", "run", "start:prod" ]